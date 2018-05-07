
ARR_1 = zeros(1,30);
ARR_2 = zeros(1,30);
ARR_3 = zeros(1,30);
ARR_OUT = zeros(500,90); %% 500���� ��� �ʹٸ� zeros(500,90)

k = 1; %�ݺ�(iteration)�� ���� �ʱ�ȭ
t = 300; %Ư�� �κк��� �߶� �������� ���� ��, ���ʽ������� ����

while(k <= 500)
csi_trace = read_bf_file('C:\Users\ACA\Documents\MATLAB\matlab\real_data\standing10.data');
csi_entry = csi_trace{t};
csi = get_scaled_csi(csi_entry);


A = abs(csi);
%B = db(A);

i = 1;
while(i<=30)
   
    ARR_1(i) = A(:,1,i);
    ARR_2(i) = A(:,2,i);
    ARR_3(i) = A(:,2,i);
    i = i + 1;
    
end

ARR_FINAL = [ARR_1,ARR_2,ARR_3]; %��ġ��
ARR_OUT(k,:) = ARR_FINAL;

disp(k);

k = k + 1; 
t = t + 1;
end
csvwrite('test_stand.csv', ARR_OUT);



