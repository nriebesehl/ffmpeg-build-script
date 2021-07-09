ARG DIST=ubuntu

FROM scratch

# Copy libnpp
COPY --from=ffmpeg:cuda-ubuntu /lib/x86_64-linux-gnu/libnppc.so.11 /lib/libnppc.so.11
COPY --from=ffmpeg:cuda-ubuntu /lib/x86_64-linux-gnu/libnppig.so.11 /lib/libnppig.so.11
COPY --from=ffmpeg:cuda-ubuntu /lib/x86_64-linux-gnu/libnppicc.so.11 /lib/libnppicc.so.11
COPY --from=ffmpeg:cuda-ubuntu /lib/x86_64-linux-gnu/libnppidei.so.11 /lib/libnppidei.so.11

# Copy ffmpeg
COPY --from=ffmpeg:cuda-ubuntu /usr/bin/ffmpeg /bin/ffmpeg
COPY --from=ffmpeg:cuda-ubuntu /usr/bin/ffprobe /bin/ffprobe
COPY --from=ffmpeg:cuda-ubuntu /usr/bin/ffplay /bin/ffplay
