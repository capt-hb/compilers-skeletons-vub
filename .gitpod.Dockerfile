FROM gitpod/workspace-full

RUN sudo add-apt-repository -y ppa:plt/racket && sudo apt-get update -y && sudo apt-get install -y racket nasm xvfb
RUN raco pkg install --batch --auto https://github.com/cpsc411/cpsc411-pub.git?path=cpsc411-lib#2021w2 \
                                    https://github.com/cpsc411/cpsc411-pub.git?path=cpsc411-doc#2021w2 \
                                    racket-langserver

USER gitpod