% install and add paths

addpath(genpath('/deps'));

cd /code/nnv;

run install.m;

matlabshared.supportpkg.setSupportPackageRoot('/usr/local/MATLAB/R2022b');
addpath(genpath('/usr/local/MATLAB'));

% check if on codeocean/docker, error out if not
try
    if ~is_codeocean() % test codeocean detection
        'ERROR: run_codeocean.m should only be executed on the codeocean platform'
        return;
    end
catch
    'ERROR: path likely not set, run install.m'
end

% default output path for path_results, ensure logs subdirectory there
mkdir('/results/logs/')

cd /code/nnv/examples/NNV2.0/Submission/CAV2023/

RE_cav23_short % run a subset of all results
