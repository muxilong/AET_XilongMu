function [id] = My_kmeans_1d(data,k)
    id_raw = kmeans(data,k);
    id = id_raw;
    C = zeros(max(id_raw),1);
    for i = 1:max(id_raw)
        C(i) = mean(data(id_raw==i));
    end
    [~,C1] = sort(C,"ascend");
    for i = 1:max(id_raw)
        id(i) = find(C1 == id_raw(i));
    end
end

