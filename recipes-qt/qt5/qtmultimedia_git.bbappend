PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'alsa', 'alsa', '', d)} \
                  ${@bb.utils.contains('DISTRO_FEATURES', 'pulseaudio', 'pulseaudio', '', d)} \
                  ${@bb.utils.contains('DISTRO_FEATURES', 'gstreamer010', 'gstreamer010', 'gstreamer', d)}"
