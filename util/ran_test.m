function [X] = ran_test(template,X)
	%N = size(TRAIN,1);
    for i = 1: size(X,1)
        i
        Y = [X(i,:);template];
        for j = 1:size(Y,2)
            [~,pos]=sort(Y(:,j));
            for k = 1: size(Y,1)
                if pos(k,1) == 1
                    X(i,j) = k/52.0;
                end
            end
        end
    end
end
