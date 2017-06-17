function [template]=get_ran_template(TRAIN,trainLables)
    template = [];
    for i =1:21
        w=find(trainLables==i);
        n = randperm( size(w,2));
        template = [template;TRAIN(w(1,n(1,1)),:); TRAIN(w(1,n(1,2)),:)];
    end
end
