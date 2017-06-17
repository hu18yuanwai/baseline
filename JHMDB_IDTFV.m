function JHMDB_IDTFV()
    clear;
    clc;
    addpath('util')
    % add dependency from vl_feat toolbox and libsvm
    addpath(genpath('mex'))
    % TODO: add OPENCV to LD_LIB Path. 
    % On Windows OS, you need put the OPNENCV DLL lib path to the Path ENVIRONMENT_VARIABLE
    addpath('~/lib/vlfeat/toolbox');
    vl_setup();
    % TODO Add paths
    % add open cv to LD_LIB Path
    setenv('LD_LIBRARY_PATH','/usr/local/lib/');
    % TODO
    % add lib linear to path
    addpath('~/lib/liblinear/matlab');
    % TODO
    % add lib svm to path
    addpath('~/lib/libsvm/matlab');
    % TODO change paths inside getConfig
    des_accs = [];
    for s = 1:3
        % TODO: change some paths in run_split function
        split_accs = run_hmdb_split(s,'jhmdb');
        des_accs = [des_accs, split_accs];
        save('./result/temp.mat','des_accs');
    end
    des_accs = [des_accs, mean(des_accs,2)]  
    save('./result/JHMDB.mat', 'des_accs');
end
