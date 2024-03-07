function [id] = My_dbscan_1d(data,epsilon,M)
    id_raw = dbscan(data,epsilon,M);
    id = id_raw;
    C = zeros(max(id_raw),1);
    for i = 1:max(id_raw)
        C(i) = mean(data(id_raw==i));
    end
    [~,C1] = sort(C,"ascend");
    for i = 1:length(data)
        id(i) = find(C1 == id_raw(i));
    end
    figure;gscatter(ones(size(data)),data,id);
end

