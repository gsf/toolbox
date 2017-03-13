FROM gliderlabs/alpine:edge

RUN echo "http://alpine.gliderlabs.com/alpine/edge/testing" >> /etc/apk/repositories
RUN apk-install abduco git mosh neovim

ADD https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
  /root/.config/nvim/autoload/plug.vim

COPY .config/nvim/init.vim /root/.config/nvim/init.vim

CMD ["abduco", "-c", "default", "nvim"]
