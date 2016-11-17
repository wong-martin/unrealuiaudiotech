# GNU Make project makefile autogenerated by Premake
ifndef config
  config=debug
endif

ifndef verbose
  SILENT = @
endif

ifndef CC
  CC = gcc
endif

ifndef CXX
  CXX = g++
endif

ifndef AR
  AR = ar
endif

ifeq ($(config),debug)
  PREMAKE4_PLATFORM_NAME = Native
  PREMAKE4_BUILDTARGET_BASENAME = AkDelayFX
  OBJDIR     = ../../../../../../Linux_$(AK_LINUX_ARCH)/Debug/obj/$(PREMAKE4_BUILDTARGET_BASENAME)
  TARGETDIR  = ../../../../../../Linux_$(AK_LINUX_ARCH)/Debug/lib
  TARGET     = $(TARGETDIR)/libAkDelayFX.a
  DEFINES   += -DAKSOUNDENGINE_EXPORTS -D_DEBUG -DAUDIOKINETIC
  INCLUDES  += -I. -I.. -I../../../../../../include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -O3 -fPIC -fvisibility=hidden
  CXXFLAGS  += $(CFLAGS) -Wno-invalid-offsetof -fno-rtti -fno-exceptions
  LDFLAGS   += 
  LIBS      += 
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(AR) -rcs $(TARGET) $(OBJECTS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),profile)
  PREMAKE4_PLATFORM_NAME = Native
  PREMAKE4_BUILDTARGET_BASENAME = AkDelayFX
  OBJDIR     = ../../../../../../Linux_$(AK_LINUX_ARCH)/Profile/obj/$(PREMAKE4_BUILDTARGET_BASENAME)
  TARGETDIR  = ../../../../../../Linux_$(AK_LINUX_ARCH)/Profile/lib
  TARGET     = $(TARGETDIR)/libAkDelayFX.a
  DEFINES   += -DAKSOUNDENGINE_EXPORTS -DNDEBUG -DAUDIOKINETIC
  INCLUDES  += -I. -I.. -I../../../../../../include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -O3 -fPIC -fvisibility=hidden
  CXXFLAGS  += $(CFLAGS) -Wno-invalid-offsetof -fno-rtti -fno-exceptions
  LDFLAGS   += 
  LIBS      += 
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(AR) -rcs $(TARGET) $(OBJECTS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),profile_enableasserts)
  PREMAKE4_PLATFORM_NAME = Native
  PREMAKE4_BUILDTARGET_BASENAME = AkDelayFX
  OBJDIR     = ../../../../../../Linux_$(AK_LINUX_ARCH)/Profile_EnableAsserts/obj/$(PREMAKE4_BUILDTARGET_BASENAME)
  TARGETDIR  = ../../../../../../Linux_$(AK_LINUX_ARCH)/Profile_EnableAsserts/lib
  TARGET     = $(TARGETDIR)/libAkDelayFX.a
  DEFINES   += -DAKSOUNDENGINE_EXPORTS -DNDEBUG -DAK_ENABLE_ASSERTS -DAUDIOKINETIC
  INCLUDES  += -I. -I.. -I../../../../../../include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -O3 -fPIC -fvisibility=hidden
  CXXFLAGS  += $(CFLAGS) -Wno-invalid-offsetof -fno-rtti -fno-exceptions
  LDFLAGS   += 
  LIBS      += 
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(AR) -rcs $(TARGET) $(OBJECTS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release)
  PREMAKE4_PLATFORM_NAME = Native
  PREMAKE4_BUILDTARGET_BASENAME = AkDelayFX
  OBJDIR     = ../../../../../../Linux_$(AK_LINUX_ARCH)/Release/obj/$(PREMAKE4_BUILDTARGET_BASENAME)
  TARGETDIR  = ../../../../../../Linux_$(AK_LINUX_ARCH)/Release/lib
  TARGET     = $(TARGETDIR)/libAkDelayFX.a
  DEFINES   += -DAKSOUNDENGINE_EXPORTS -DNDEBUG -DAK_OPTIMIZED -DAUDIOKINETIC
  INCLUDES  += -I. -I.. -I../../../../../../include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -O3 -fPIC -fvisibility=hidden
  CXXFLAGS  += $(CFLAGS) -Wno-invalid-offsetof -fno-rtti -fno-exceptions
  LDFLAGS   += 
  LIBS      += 
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(AR) -rcs $(TARGET) $(OBJECTS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/AkDelayFX.o \
	$(OBJDIR)/AkDelayFXDSP.o \
	$(OBJDIR)/AkDelayFXParams.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking AkDelayFXLinux
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning AkDelayFXLinux
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
	-$(SILENT) cp $< $(OBJDIR)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
endif

$(OBJDIR)/AkDelayFX.o: ../AkDelayFX.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AkDelayFXDSP.o: ../AkDelayFXDSP.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AkDelayFXParams.o: ../AkDelayFXParams.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
