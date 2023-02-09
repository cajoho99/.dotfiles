function gdh --argument reach
    if count $argv > /dev/null
        git diff HEAD~$reach
    else
        git diff HEAD
    end
end
