function zi
    set dir (z -l $argv | awk '{ print substr($0, index($0, $2)) }' | fzf)

    if test -z "$dir"
        # Press Ctrl-C
        return 1
    end

    cd $dir
    if test -n "$ZI_AUTO_CMD"
        eval $ZI_AUTO_CMD
    end
end
