#### registry mirrors

```shell
mkdir -p $HOME/.cargo
cat > $HOME/.cargo/config << EOF
[registry]
index = "git://mirrors.ustc.edu.cn/crates.io-index"
EOF>>
```
