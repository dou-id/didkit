# docker run -v $PWD/..:/work -it --rm rust:1.75 bash -c "cargo install wasm-pack --version 0.12.1 --locked && cd work/didkit/lib/web && wasm-pack build --out-dir /work/didkit/didkit-wasm-node --target nodejs"
# docker run -v $PWD/..:/work -it --rm rust:1.75 bash -c "cargo install wasm-pack --version 0.12.1 --locked && cd work/didkit/lib/web && wasm-pack build --out-dir /work/didkit/didkit-wasm"
# Declare ES module in package.json - gthb, issue/1039, pull/1061 https://github.com/rustwasm/wasm-pack/releases/tag/v0.13.0
# docker run -v $PWD/..:/work -it --rm rust:1.75 bash -c "cargo install wasm-pack --version 0.13.1 --locked && cd work/didkit/lib/web && wasm-pack build --out-dir /work/didkit/didkit-wasm-node --target nodejs"
# docker run -v $PWD/..:/work -it --rm rust:1.75 bash -c "cargo install wasm-pack --version 0.13.1 --locked && cd work/didkit/lib/web && wasm-pack build --out-dir /work/didkit/didkit-wasm"
docker run -v $PWD/..:/work -it --rm rust:1.75 bash -c \
    "cargo install wasm-pack --version 0.12.1 --locked \
        && cargo install wasm-bindgen-cli --version 0.2.89 --locked \
        && cd work/didkit/lib/web \
        && wasm-pack build --out-dir /work/didkit/didkit-wasm-node --target nodejs \
        && wasm-pack build --out-dir /work/didkit/didkit-wasm"
