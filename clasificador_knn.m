function prediccion = clasificador_knn(test_data,train_data,train_tasks, k)

prediccion=zeros(size(test_data,1),1);

for i=1:size(test_data,1)
    temp=test_data(i,:);
    temp2=repmat(temp,size(train_data,1),1);
    temp3=sqrt(sum((temp2-train_data).^2,2));
    temp4=sortrows([temp3 train_tasks],1);
    prediccion(i)=mode(temp4(1:k,2));
end
