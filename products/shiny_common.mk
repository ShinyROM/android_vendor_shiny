# Common props root
COMMON_PROPS_ROOT=vendor/shiny/proprietary/common

# Generic product
PRODUCT_NAME := shiny
PRODUCT_BRAND := shiny
PRODUCT_DEVICE := generic

# Deodex if requested, otherwise we'll stay odexed
ifeq ($(DEODEX),true)
	export DISABLE_DEXPREOPT=true
	export WITH_DEXPREOPT=false
else
	export DISABLE_DEXPREOPT=false
	export WITH_DEXPREOPT=true
endif

# AOSP packages common to all of our devices
PRODUCT_PACKAGES += \
	PartnerBookmarksProvider \
	CalendarProvider \
	libjni_eglfence \
	libjni_mosaic \
	libjni_latinime \
	libjni_filtershow_filters \
	libjni_jpegstream \
	libjni_tinyplanet \
	librsjni \
	libRSSupport \
	libwebrtc_audio_coding \
	libwebrtc_audio_preprocessing

# Import common Shiny overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/shiny/overlay/common

# Common props
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.google.mcc_fallback=262
    
# Private system apps
PRODUCT_COPY_FILES += \
	$(COMMON_PROPS_ROOT)/priv-app/ConfigUpdater.apk:system/priv-app/ConfigUpdater.apk \
	$(COMMON_PROPS_ROOT)/priv-app/ConfigUpdater.odex:system/priv-app/ConfigUpdater.odex \
	$(COMMON_PROPS_ROOT)/priv-app/GoogleBackupTransport.apk:system/priv-app/GoogleBackupTransport.apk \
	$(COMMON_PROPS_ROOT)/priv-app/GoogleBackupTransport.odex:system/priv-app/GoogleBackupTransport.odex \
	$(COMMON_PROPS_ROOT)/priv-app/GoogleDialer.apk:system/priv-app/GoogleDialer.apk \
	$(COMMON_PROPS_ROOT)/priv-app/GoogleDialer.odex:system/priv-app/GoogleDialer.odex \
	$(COMMON_PROPS_ROOT)/priv-app/GoogleFeedback.apk:system/priv-app/GoogleFeedback.apk \
	$(COMMON_PROPS_ROOT)/priv-app/GoogleFeedback.odex:system/priv-app/GoogleFeedback.odex \
	$(COMMON_PROPS_ROOT)/priv-app/GoogleLoginService.apk:system/priv-app/GoogleLoginService.apk \
	$(COMMON_PROPS_ROOT)/priv-app/GoogleLoginService.odex:system/priv-app/GoogleLoginService.odex \
	$(COMMON_PROPS_ROOT)/priv-app/GoogleOneTimeInitializer.apk:system/priv-app/GoogleOneTimeInitializer.apk \
	$(COMMON_PROPS_ROOT)/priv-app/GoogleOneTimeInitializer.odex:system/priv-app/GoogleOneTimeInitializer.odex \
	$(COMMON_PROPS_ROOT)/priv-app/GooglePartnerSetup.apk:system/priv-app/GooglePartnerSetup.apk \
	$(COMMON_PROPS_ROOT)/priv-app/GooglePartnerSetup.odex:system/priv-app/GooglePartnerSetup.odex \
	$(COMMON_PROPS_ROOT)/priv-app/GoogleServicesFramework.apk:system/priv-app/GoogleServicesFramework.apk \
	$(COMMON_PROPS_ROOT)/priv-app/GoogleServicesFramework.odex:system/priv-app/GoogleServicesFramework.odex \
	$(COMMON_PROPS_ROOT)/priv-app/Phonesky.apk:system/priv-app/Phonesky.apk \
	$(COMMON_PROPS_ROOT)/priv-app/PrebuiltGmsCore.apk:system/priv-app/PrebuiltGmsCore.apk \
	$(COMMON_PROPS_ROOT)/priv-app/SetupWizard.apk:system/priv-app/SetupWizard.apk \
	$(COMMON_PROPS_ROOT)/priv-app/SetupWizard.odex:system/priv-app/SetupWizard.odex \
	$(COMMON_PROPS_ROOT)/priv-app/TagGoogle.apk:system/priv-app/TagGoogle.apk \
	$(COMMON_PROPS_ROOT)/priv-app/TagGoogle.odex:system/priv-app/TagGoogle.odex \
	$(COMMON_PROPS_ROOT)/priv-app/talkback.apk:system/priv-app/talkback.apk \
	$(COMMON_PROPS_ROOT)/priv-app/Velvet.apk:system/priv-app/Velvet.apk
    
# Common system apps
PRODUCT_COPY_FILES += \
    $(COMMON_PROPS_ROOT)/app/Books.apk:system/app/Books.apk \
    $(COMMON_PROPS_ROOT)/app/CalendarGoogle.apk:system/app/CalendarGoogle.apk \
    $(COMMON_PROPS_ROOT)/app/CalendarGoogle.odex:system/app/CalendarGoogle.odex \
    $(COMMON_PROPS_ROOT)/app/Chrome.apk:system/app/Chrome.apk \
    $(COMMON_PROPS_ROOT)/app/CloudPrint2.apk:system/app/CloudPrint2.apk \
    $(COMMON_PROPS_ROOT)/app/DeskClockGoogle.apk:system/app/DeskClockGoogle.apk \
    $(COMMON_PROPS_ROOT)/app/DeskClockGoogle.odex:system/app/DeskClockGoogle.odex \
    $(COMMON_PROPS_ROOT)/app/Drive.apk:system/app/Drive.apk \
    $(COMMON_PROPS_ROOT)/app/EmailGoogle.apk:system/app/EmailGoogle.apk \
    $(COMMON_PROPS_ROOT)/app/EmailGoogle.odex:system/app/EmailGoogle.odex \
    $(COMMON_PROPS_ROOT)/app/Exchange2Google.apk:system/app/Exhcnage2Google.apk \
    $(COMMON_PROPS_ROOT)/app/Exchange2Google.odex:system/app/Exhcnage2Google.odex \
    $(COMMON_PROPS_ROOT)/app/FaceLock.apk:system/app/FaceLock.apk \
    $(COMMON_PROPS_ROOT)/app/FaceLock.odex:system/app/FaceLock.odex \
    $(COMMON_PROPS_ROOT)/app/GalleryGoogle.apk:system/app/GalleryGoogle.apk \
    $(COMMON_PROPS_ROOT)/app/GalleryGoogle.odex:system/app/GalleryGoogle.odex \
    $(COMMON_PROPS_ROOT)/app/GenieWidget.apk:system/app/GenieWidget.apk \
    $(COMMON_PROPS_ROOT)/app/GenieWidget.odex:system/app/GenieWidget.odex \
    $(COMMON_PROPS_ROOT)/app/Gmail2.apk:system/app/Gmail2.apk \
    $(COMMON_PROPS_ROOT)/app/Gmail2.odex:system/app/Gmail2.odex \
    $(COMMON_PROPS_ROOT)/app/GoogleCamera.apk:system/app/GoogleCamera.apk \
    $(COMMON_PROPS_ROOT)/app/GoogleCamera.odex:system/app/GoogleCamera.odex \
    $(COMMON_PROPS_ROOT)/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    $(COMMON_PROPS_ROOT)/app/GoogleContactsSyncAdapter.odex:system/app/GoogleContactsSyncAdapter.odex \
    $(COMMON_PROPS_ROOT)/app/GoogleEars.apk:system/app/GoogleEars.apk \
    $(COMMON_PROPS_ROOT)/app/GoogleEars.odex:system/app/GoogleEars.odex \
    $(COMMON_PROPS_ROOT)/app/GoogleEarth.apk:system/app/GoogleEarth.apk \
    $(COMMON_PROPS_ROOT)/app/GoogleHome.apk:system/app/GoogleHome.apk \
    $(COMMON_PROPS_ROOT)/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    $(COMMON_PROPS_ROOT)/app/GoogleTTS.odex:system/app/GoogleTTS.odex \
    $(COMMON_PROPS_ROOT)/app/Hangouts.apk:system/app/Hangouts.apk \
    $(COMMON_PROPS_ROOT)/app/HPPrintPlugin.apk:system/app/HPPrintPlugin.apk \
    $(COMMON_PROPS_ROOT)/app/Keep.apk:system/app/Keep.apk \
    $(COMMON_PROPS_ROOT)/app/Keep.odex:system/app/Keep.odex \
    $(COMMON_PROPS_ROOT)/app/LatinImeGoogle.apk:system/app/LatinImeGoogle.apk \
    $(COMMON_PROPS_ROOT)/app/LatinImeGoogle.odex:system/app/LatinImeGoogle.odex \
    $(COMMON_PROPS_ROOT)/app/Magazines.apk:system/app/Magazines.apk \
    $(COMMON_PROPS_ROOT)/app/Maps.apk:system/app/Maps.apk \
    $(COMMON_PROPS_ROOT)/app/MediaUploader.apk:system/app/MediaUploader.apk \
    $(COMMON_PROPS_ROOT)/app/MediaUploader.odex:system/app/MediaUploader.odex \
    $(COMMON_PROPS_ROOT)/app/Music2.apk:system/app/Music2.apk \
    $(COMMON_PROPS_ROOT)/app/PlayGames.apk:system/app/PlayGames.apk \
    $(COMMON_PROPS_ROOT)/app/PlusOne.apk:system/app/PlusOne.apk \
    $(COMMON_PROPS_ROOT)/app/QuickOffice.apk:system/app/QuickOffice.apk \
    $(COMMON_PROPS_ROOT)/app/Street.apk:system/app/Street.apk \
    $(COMMON_PROPS_ROOT)/app/SunBeam.apk:system/app/SunBeam.apk \
    $(COMMON_PROPS_ROOT)/app/Videos.apk:system/app/Videos.apk \
    $(COMMON_PROPS_ROOT)/app/YouTube.apk:system/app/YouTube.apk
    
# Copy Google Wallet if we're building a device that supports it
ifneq (,$(filter $(TARGET_PRODUCT),shiny_toro shiny_grouper))
	PRODUCT_COPY_FILES += \
		$(COMMON_PROPS_ROOT)/priv-app/Wallet.apk:system/priv-app/Wallet.apk
endif
    
# Common etc permissions and props
PRODUCT_COPY_FILES += \
    $(COMMON_PROPS_ROOT)/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    $(COMMON_PROPS_ROOT)/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    $(COMMON_PROPS_ROOT)/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    $(COMMON_PROPS_ROOT)/etc/permissions/features.xml:system/etc/permissions/features.xml \
    $(COMMON_PROPS_ROOT)/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml

# Common framework
PRODUCT_COPY_FILES += \
	$(COMMON_PROPS_ROOT)/framework/com.google.android.camera2.jar:system/framework/com.google.android.camera2.jar \
	$(COMMON_PROPS_ROOT)/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    $(COMMON_PROPS_ROOT)/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    $(COMMON_PROPS_ROOT)/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar
	
# Common libs
PRODUCT_COPY_FILES += \
    $(COMMON_PROPS_ROOT)/lib/libadsprpc.so:system/lib/libadsprpc.so \
    $(COMMON_PROPS_ROOT)/lib/libAppDataSearch.so:system/lib/libAppDataSearch.so \
    $(COMMON_PROPS_ROOT)/lib/libchromeview.so:system/lib/libchromeview.so \
    $(COMMON_PROPS_ROOT)/lib/libdocscanner_image-v7a.so:system/lib/libdocscanner_image-v7a.so \
    $(COMMON_PROPS_ROOT)/lib/libdocsimageutils.so:system/lib/libdocsimageutils.so \
    $(COMMON_PROPS_ROOT)/lib/libearthandroid.so:system/lib/libearthandroid.so \
    $(COMMON_PROPS_ROOT)/lib/libearthmobile.so:system/lib/libearthmobile.so \
    $(COMMON_PROPS_ROOT)/lib/libfacetracker.so:system/lib/libfacetracker.so \
    $(COMMON_PROPS_ROOT)/lib/libfacelock_jni.so:system/lib/libfacelock_jni.so \
    $(COMMON_PROPS_ROOT)/lib/libfilterframework_jni.so:system/lib/libfilterframework_jni.so \
	$(COMMON_PROPS_ROOT)/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    $(COMMON_PROPS_ROOT)/lib/libfrsdk.so:system/lib/libfrsdk.so \
    $(COMMON_PROPS_ROOT)/lib/libgames_rtmp_jni.so:system/lib/libgames_rtmp_jni.so \
    $(COMMON_PROPS_ROOT)/lib/libgcam.so:system/lib/libgcam.so \
    $(COMMON_PROPS_ROOT)/lib/libgcam_swig_jni.so:system/lib/libgcam_swig_jni.so \
    $(COMMON_PROPS_ROOT)/lib/libgoogle_recognizer_jni_l.so:system/lib/libgoogle_recognizer_jni_l.so \
    $(COMMON_PROPS_ROOT)/lib/libgtalk_jni.so:system/lib/libgtalk_jni.so \
    $(COMMON_PROPS_ROOT)/lib/libgtalk_stabilize.so:system/lib/libgtalk_stabilize.so \
    $(COMMON_PROPS_ROOT)/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    $(COMMON_PROPS_ROOT)/lib/libjni_t13n_shared_engine.so:system/lib/libjni_t13n_shared_engine.so \
    $(COMMON_PROPS_ROOT)/lib/liblightcycle.so:system/lib/liblightcycle.so \
    $(COMMON_PROPS_ROOT)/lib/liblinearalloc.so:system/lib/liblinearalloc.so \
    $(COMMON_PROPS_ROOT)/lib/libmoviemaker-jni.so:system/lib/libmoviemaker-jni.so \
    $(COMMON_PROPS_ROOT)/lib/libndk1.so:system/lib/libndk1.so \
    $(COMMON_PROPS_ROOT)/lib/libnetjni.so:system/lib/libnetjni.so \
    $(COMMON_PROPS_ROOT)/lib/libocrclient.so:system/lib/libocrclient.so \
    $(COMMON_PROPS_ROOT)/lib/libpatts_engine_jni_api.so:system/lib/libpatts_engine_jni_api.so \
    $(COMMON_PROPS_ROOT)/lib/libplus_jni_v8.so:system/lib/libplus_jni_v8.so \
    $(COMMON_PROPS_ROOT)/lib/librectifier-v7a.so:system/lib/librectifier-v7a.so \
    $(COMMON_PROPS_ROOT)/lib/librs.antblur.so:system/lib/librs.antblur.so \
    $(COMMON_PROPS_ROOT)/lib/librs.antblur_constant.so:system/lib/librs.antblur_constant.so \
    $(COMMON_PROPS_ROOT)/lib/librs.antblur_drama.so:system/lib/librs.antblur_drama.so \
    $(COMMON_PROPS_ROOT)/lib/librs.drama.so:system/lib/librs.drama.so \
    $(COMMON_PROPS_ROOT)/lib/librs.film_base.so:system/lib/librs.film_base.so \
    $(COMMON_PROPS_ROOT)/lib/librs.fixedframe.so:system/lib/librs.fixedframe.so \
    $(COMMON_PROPS_ROOT)/lib/librs.grey.so:system/lib/librs.grey.so \
    $(COMMON_PROPS_ROOT)/lib/librs.image_wrapper.so:system/lib/librs.image_wrapper.so \
    $(COMMON_PROPS_ROOT)/lib/librs.retrolux.so:system/lib/librs.retrolux.so \
    $(COMMON_PROPS_ROOT)/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    $(COMMON_PROPS_ROOT)/lib/libstlport_shared.so:system/lib/libstlport_shared.so \
    $(COMMON_PROPS_ROOT)/lib/libvcdecoder_jni.so:system/lib/libvcdecoder_jni.so \
    $(COMMON_PROPS_ROOT)/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    $(COMMON_PROPS_ROOT)/lib/libvorbisencoder.so:system/lib/libvorbisencoder.so \
    $(COMMON_PROPS_ROOT)/lib/libwebp_android.so:system/lib/libwebp_android.so \
    $(COMMON_PROPS_ROOT)/lib/libwprintplugin_pcl.so:system/lib/libwprintplugin_pcl.so \
    $(COMMON_PROPS_ROOT)/lib/libwprintplugin_pdf.so:system/lib/libwprintplugin_pdf.so \
    $(COMMON_PROPS_ROOT)/lib/libWVphoneAPI.so:system/lib/libWVphoneAPI.so
    
# Common DRM files and props
PRODUCT_COPY_FILES += \
    $(COMMON_PROPS_ROOT)/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    $(COMMON_PROPS_ROOT)/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    $(COMMON_PROPS_ROOT)/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    $(COMMON_PROPS_ROOT)/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    $(COMMON_PROPS_ROOT)/vendor/lib/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true
    
# Common facelock files and props
PRODUCT_COPY_FILES +=  \
    $(COMMON_PROPS_ROOT)/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/left_eye-y0-yi45-p0-pi45-r0-ri20.lg_32.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/left_eye-y0-yi45-p0-pi45-r0-ri20.lg_32.bin \
    $(COMMON_PROPS_ROOT)/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/nose_base-y0-yi45-p0-pi45-r0-ri20.lg_32.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/nose_base-y0-yi45-p0-pi45-r0-ri20.lg_32.bin \
    $(COMMON_PROPS_ROOT)/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/right_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-2.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/right_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-2.bin \
    $(COMMON_PROPS_ROOT)/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-r0-ri30.4a-v24.bin:system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-r0-ri30.4a-v24.bin \
    $(COMMON_PROPS_ROOT)/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rp30-ri30.5-v24.bin:system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rp30-ri30.5-v24.bin \
    $(COMMON_PROPS_ROOT)/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rn30-ri30.5-v24.bin:system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rn30-ri30.5-v24.bin \
    $(COMMON_PROPS_ROOT)/vendor/pittpatt/models/recognition/face.face.y0-y0-22-b-N.bin:system/vendor/pittpatt/models/recognition/face.face.y0-y0-22-b-N.bin

PRODUCT_PROPERTY_OVERRIDES += \
    ro.facelock.black_timeout=1250 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=800 \
    ro.facelock.use_intro_anim=true

# Common files and props for media effects
PRODUCT_COPY_FILES +=  \
    $(COMMON_PROPS_ROOT)/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    $(COMMON_PROPS_ROOT)/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd

$(call inherit-product-if-exists, frameworks/base/data/videos/VideoPackage2.mk)

# Common speech recognition (US) files and props
PRODUCT_COPY_FILES +=  \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/c_fst:system/usr/srec/en-US/c_fst \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/clg:system/usr/srec/en-US/clg \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/commands.abnf:system/usr/srec/en-US/commands.abnf \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/compile_grammar.config:system/usr/srec/en-US/compile_grammar.config \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/contacts.abnf:system/usr/srec/en-US/contacts.abnf \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/dict:system/usr/srec/en-US/dict \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/dictation.config:system/usr/srec/en-US/dictation.config \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/dnn:system/usr/srec/en-US/dnn \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/endpointer_dictation.config:system/usr/srec/en-US/endpointer_dictation.config \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/endpointer_voicesearch.config:system/usr/srec/en-US/endpointer_voicesearch.config \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/ep_acoustic_model:system/usr/srec/en-US/ep_acoustic_model \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/g2p_fst:system/usr/srec/en-US/g2p_fst \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/grammar.config:system/usr/srec/en-US/grammar.config \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/hclg_shotword:system/usr/srec/en-US/hclg_shotword \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/hmmlist:system/usr/srec/en-US/hmmlist \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/hmm_symbols:system/usr/srec/en-US/hmm_symbols \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/hotword.config:system/usr/srec/en-US/hotword.config \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/hotword_classifier:system/usr/srec/en-US/hotword_classifier \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/hotword_normalizer:system/usr/srec/en-US/hotword_normalizer \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/hotword_prompt.txt:system/usr/srec/en-US/hotword_prompt.txt \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/hotword_word_symbols:system/usr/srec/en-US/hotword_word_symbols \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/metadata:system/usr/srec/en-US/metadata \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/normalizer:system/usr/srec/en-US/normalizer \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/norm_fst:system/usr/srec/en-US/norm_fst \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/offensive_word_normalizer:system/usr/srec/en-US/offensive_word_normalizer \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/phonelist:system/usr/srec/en-US/phonelist \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/phone_state_map:system/usr/srec/en-US/phone_state_map \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/rescoring_lm:system/usr/srec/en-US/rescoring_lm \
    $(COMMON_PROPS_ROOT)/usr/srec/en-US/wordlist:system/usr/srec/en-US/wordlist
