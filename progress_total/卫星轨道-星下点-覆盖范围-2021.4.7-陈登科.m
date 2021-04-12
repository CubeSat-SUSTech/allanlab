clc
close all
clear all
%% % % % % % % % % % % % % % % % % 底图绘制 % % % % % % % % % % % % % % % % % % % % % %
grid on
hold on

xlabel('Longitude');
ylabel('Latitude');%坐标轴标题
set(gca,'Ylim',[-90,90],'ytick',(-90:10:90));
set(gca,'yticklabel',{'90°S','80°','70°','60°','50°','40°','30°','20°','10°','0°','10°','20°','30°','40°','50°','60°','70°','80°','90°N'});
set(gca,'Xlim',[-180,180],'xtick',(-180:30:180));
set(gca,'xticklabel',{'180°W','150°','120°','90°','60°','30°','0°','30°','60°','90°','120°','150°','180°E'});
%坐标轴范围及刻度分划，坐标轴文字替代
set(gca,'Box','on');%坐标轴是否为四面
set(gca,'FontSize',10,'Fontname', 'Times New Roman','Fontweight', 'bold');%字号、字体、是否加粗
set(gca,'GridAlpha',1,'GridLineStyle','--');%格网透明度（0-1）及线型
title('Track of Aurora Satellite Point','FontSize',14,'Fontweight', 'bold');%图标题
%% % % % % % % % % % % % % % % % % 变量定义 % % % % % % % % % % % % % % % % % % % % % %
PI = 3.1415926;
W_EARTH = 7.29e-5;% 地球自转速度(rad)
GGC = 3.986e5;% 地心引力常数
N_T =1;% 实验观测周期数，可延长观察时间

for ii = 1 : 1
	% 轨道六根数
	a = 6871;% 轨道长半轴（Km）
    R0 = 6481;
	e = 0;% 轨道偏心率
	i = 78 * PI/180;% 轨道倾角（rad）
	w = 100 * PI/180;% 轨道近地点幅角（rad）
	RAAN = 15 * ii * PI/180;% 升交点赤经
	%T = 2 * PI / W_EARTH;% %运行一天
    
    T = 2 * PI * sqrt((a^3) / GGC);%运行一个卫星周期
	
	% 轨道真近心角f(rad)，由以下公式计算
	Ts = double(300);% 采样时间间隔（s）
	t = (0:Ts:N_T*T);% 采样时间点
	tp = 0;
	n = sqrt(GGC/a^3);% 卫星平运动速度(rad)
	M = n * (t - tp);% 卫星平近点角（rad）
	f = M + (2*e - e^3/4)*sin(M) + 1.25*e^2 * sin(2*M) +13/12 * e^3 * sin(3*M);% 轨道真近心角(rad)
	
%% % % % % % % % % % % % % % % % % 计算星下点轨迹 % % % % % % % % % % % % % %
	Rz_RAAN = [cos(RAAN) -sin(RAAN) 0 ; sin(RAAN) cos(RAAN) 0 ; 0 0 1];
	Rz_w = [cos(w) -sin(w) 0 ; sin(w) cos(w) 0 ; 0 0 1];
	Rx_i = [1 0 0 ; 0 cos(i) -sin(i) ; 0 sin(i) cos(i)];
	R = a*(1-e^2)./(1+e*cos(f));% 卫星距地心的距离，考虑f离散值
	r_sv = [R;R;R] .* [cos(f);sin(f);zeros(1,size(f,2))];% 卫星在轨道坐标系中的坐标
	r_so = Rz_RAAN * Rx_i * Rz_w * r_sv;% 卫星在地心惯性坐标系中的坐标
	x_so = r_so(1,:) ; y_so = r_so(2,:) ;z_so = r_so(3,:) ;% 卫星在地心惯性坐标系的分量
	RR = [];
	% 卫星纬度delta，大于零为北纬
	delta = atan( z_so ./sqrt((x_so .^2+y_so .^2)) ) * 180/PI;
    
 
    COUNT = 0;
	% 卫星经度alpha，大于180为西经
	for m = 1:1:size(r_so,2)
	    if (r_so(1,m) < 0)
	        alpha(m) = 180 + atan(r_so(2,m)/r_so(1,m)) * 180/PI;
        else
	         if (r_so(2,m)>0)
	            alpha(m) = atan(r_so(2,m)/r_so(1,m)) * 180/PI;
	        else
	            alpha(m) = 360 + atan(r_so(2,m)/r_so(1,m)) * 180/PI;
             end
        end
        
        if (abs(delta(m)) >= 55)
            COUNT = COUNT + 1 ;
        end
    end  %计数
    %% % % % % % % % % % % % % % % % % 计算像素下点 % % % % % % % % % % % % % %
    alpha3 = [];
    for k = 1 : 1 : size(r_so,2)
        if ( r_so(1,k)>=0)
            alpha3(k) =  - atan(r_so(2,k)/r_so(1,k));
        else
	           if (r_so(2,k)>=0)
	            alpha3(k) = (-PI/2) + atan(r_so(1,k)/r_so(2,k));
	        else
	            alpha3(k) = PI/2 + atan(r_so(1,k)/r_so(2,k));
               end
               
        end
               a_tx =  alpha3(k);
               a_ty = PI/2 - delta(k) * PI/180;

    %T = [a * sin(a_tx) * cos(a_ty);a * sin(a_tx) * sin(a_ty);a * cos(a_tx)];
    T = [0;0;a];
    f = 6.0e-6;%镜头焦距（单位km）
    dx = 1e-9;%像素宽（单位km）
    dy = 1e-9;%像素高（单位km）
    M = 5600;%像素宽个数
    N = 4000;%像素高个数
    Rr =   [-cos(a_ty),0,sin(a_ty);0,1,0;-sin(a_ty),0,-cos(a_ty)] * [cos(a_tx),-sin(a_tx),0;sin(a_tx),cos(a_tx),0;0,0,1];%旋转矩阵
    P_in = [f/dx,0,((M/2));0 , f/dy , ((N/2)); 0,0,1];%相机内参
    rr = [];
    
    for i = 0 : dx/2 : ((M - 1/2) * dx)
        for j = 0 : dy/2 : ((N - 1/2) * dy)
            if (i == (dx/2)  || i == (M - 1/2)*dx)
                if (j == (dy/2) || j == (N - 1/2) * dy)
    Xp = [(i)/dx;j/dx;1];%感光元件坐标
    K = (Rr^(-1)) * (P_in ^ (-1)) * Xp;
    B =  (Rr^(-1)) * T;
    aa = K(1)^2 + K(2)^2 + K(3)^2;
    bb = (-2) * (K(1) * B(1) + K(2) * B(2) + K(3) * B(3));
    cc = B(1)^2 + B(2)^2 + B(3)^2 - R0^2;
    if(  bb^2 - 4*aa*cc >= 0 )
    Zp = (-bb - sqrt(bb^2 - 4*aa*cc)) / 2*aa;
    
    Add = [K(1)*Zp - B(1);K(2)*Zp - B(2);K(3)*Zp - B(3)];
    
    delta2 = (atan( Add(3)/sqrt((Add(2)^2+Add(1)^2)) )) * 180/PI;
     if (Add(1) < 0)
	        alpha2 = 180 + (atan(Add(2)/Add(1))) * 180/PI;
        else
	         if (Add(2)>0)
	            alpha2 = (atan(((Add(2)/Add(1))))) * 180/PI;
	         else
	            alpha2 = 360 + (atan(((Add(2)/Add(1))))) * 180/PI;
             end
     end

if((sqrt(GGC / (a^3))) >= W_EARTH)
	     alpha2 = rem((alpha2 - W_EARTH*t(k)*180/PI + N_T*360),360) - 180;
else     alpha2 = rem((alpha2 + W_EARTH*t(k)*180/PI + N_T*360),360) - 180;
end
     Cdd = [alpha2;delta2];
     RR = [RR,Cdd];
     rr = [rr,Cdd];
     plot(alpha2,delta2,'.','Color','g');
%if (size(rr,2) ~= 4 )
 %   continue;
%else
 %   temp = rr(:,3);
  %  rr(:,3) = rr(:,4);
   % rr(:,4) = temp;
    %rr = [rr,rr(:,1)];
    %xxx = rr(1,:);
    %yyy = rr(2,:);
    %plot(xxx,yyy,'Color','b');
    %rr = [];
%end %画圈

    end
    end

                end 

            end
        end
     end
    
	% 计算地心经度alpha1
if((sqrt(GGC / (a^3))) >= W_EARTH)
	     alpha1 = rem((alpha - W_EARTH*t*180/PI + N_T*360),360) - 180;
else     alpha1 = rem((alpha + W_EARTH*t*180/PI + N_T*360),360) - 180;
end
	%plot(alpha1,delta,'.','Color','m');%将轨迹设置为同一颜色
	plot(alpha1,delta,'.','Color','r');

end
