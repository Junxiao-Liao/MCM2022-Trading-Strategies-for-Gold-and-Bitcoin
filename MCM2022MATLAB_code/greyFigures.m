n = 50;
A = 1:1821;
random_num = A(randperm(numel(A),n));
random_num = sort(random_num);

output_test=zeros(50,1);
test_simu=zeros(50,1);
error=zeros(50,1);
for i=1:50
    output_test(i,1)=anBTC(random_num(i));
    test_simu(i,1)=bitPrice01(random_num(i)+5);
    error(i,1)=test_simu(i,1)-output_test(i,1);
end
%%真实值与预测值误差比较
figure
plot(output_test,'color',[0.09804 0.09804 0.439215686],'linewidth',1.2)
hold on
plot(test_simu,'color',[0.80392 0.1490196 0.1490196],'linewidth',1.2)
% legend('期望值','预测值')
legend('expected value','Predictive value')
% xlabel('测试样本编号'),ylabel('指标值')
xlabel('Test sample number'),ylabel('Index value')
% title('BP测试集预测值和期望值的对比')
title('Comparison of grey test set')
set(gca,'fontsize',12)

figure
scatter(1:50,error,20,[0.80392 0.1490196 0.1490196],'filled')
% xlabel('测试样本编号'),ylabel('预测偏差')
xlabel('Test sample number'),ylabel('prediction bias')
% title('BP神经网络测试集的预测误差')
title('Prediction Error of grey Test Set')
set(gca,'fontsize',12)