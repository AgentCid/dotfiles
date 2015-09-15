mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/w0ng/vim-hybrid.git
git clone https://github.com/jlanzarotta/bufexplorer.git
