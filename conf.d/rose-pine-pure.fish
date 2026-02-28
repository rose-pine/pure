# Rosé Pine theme for pure
# https://github.com/rose-pine/pure
#
# Usage: Add to your ~/.config/fish/config.fish:
#   rose_pine_pure main  # or moon, dawn

function rose_pine_pure --description "Apply Rosé Pine theme variant for pure"
    set -l variant $argv[1]
    test -z "$variant" && set variant main

    set -l dir (status dirname)/rose-pine-pure

    switch $variant
        case main
            source $dir/rose-pine.fish
        case moon
            source $dir/rose-pine-moon.fish
        case dawn
            source $dir/rose-pine-dawn.fish
        case '*'
            echo "rose-pine-pure: unknown variant '$variant' (use main, moon, or dawn)" >&2
            return 1
    end
end
