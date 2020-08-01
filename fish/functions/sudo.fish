# Defined in - @ line 1
function sudo --wraps='sudo -E' --description 'alias sudo=sudo -E'
 command sudo -E $argv;
end
