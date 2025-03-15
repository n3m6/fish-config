if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx EDITOR /snap/bin/nvim

    ## NVIM
    alias nv="nvim"

    ## NVM Node
    abbr --add nus nvm use stable
    abbr --add nul nvm use latest
    abbr --add n22 nvm use 22
    abbr --add n20 nvm use 20
    abbr --add n18 nvm use 18
    abbr --add n16 nvm use 16
    abbr --add nu nvm use

    ## Git
    abbr --add gco git checkout
    abbr --add gb git branch

    ## Node Development
    abbr --add y yarn

    ## Db proxy
    alias dbproxy "cloud-sql-proxy --port 5432 --auto-iam-authn gke-staging-cluster-406718:europe-west1:microservices"

    # Forge & Foundry
    abbr --add f forge

    # Node Development
    abbr --add y yarn

    # Rust Development
    abbr --add c cargo

    # Kubernetes
    alias crgkube="kubectl --kubeconfig $HOME/work/gke.staging.config"
    alias rkube="kubectl --kubeconfig $HOME/src/riseon/gb-kube.yaml"
end

# pnpm
set -gx PNPM_HOME "/home/n3m6/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

fish_add_path -a /home/n3m6/.config/.foundry/bin
