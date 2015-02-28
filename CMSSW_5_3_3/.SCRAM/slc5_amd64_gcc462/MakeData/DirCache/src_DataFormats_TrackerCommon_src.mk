ifeq ($(strip $(DataFormats/TrackerCommon)),)
ALL_COMMONRULES += src_DataFormats_TrackerCommon_src
src_DataFormats_TrackerCommon_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_TrackerCommon_src,src/DataFormats/TrackerCommon/src,LIBRARY))
DataFormatsTrackerCommon := self/DataFormats/TrackerCommon
DataFormats/TrackerCommon := DataFormatsTrackerCommon
DataFormatsTrackerCommon_files := $(patsubst src/DataFormats/TrackerCommon/src/%,%,$(wildcard $(foreach dir,src/DataFormats/TrackerCommon/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsTrackerCommon_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/TrackerCommon/BuildFile
DataFormatsTrackerCommon_LOC_USE   := self DataFormats/Common DataFormats/SiStripCluster DataFormats/SiPixelDetId RecoLocalTracker/SiStripClusterizer FWCore/Framework FWCore/PluginManager FWCore/ParameterSet CommonTools/Utils FWCore/ServiceRegistry FWCore/MessageLogger rootcintex root CommonTools/UtilAlgos
DataFormatsTrackerCommon_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsTrackerCommonCapabilities,DataFormatsTrackerCommon,$(SCRAMSTORENAME_LIB)))
DataFormatsTrackerCommon_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsTrackerCommon,0,classes,$(LOCALTOP)/src/DataFormats/TrackerCommon/src/classes.h,$(LOCALTOP)/src/DataFormats/TrackerCommon/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsTrackerCommon_EX_LIB   := DataFormatsTrackerCommon
DataFormatsTrackerCommon_EX_USE   := $(DataFormatsTrackerCommon_LOC_USE)
DataFormatsTrackerCommon_PACKAGE := self/src/DataFormats/TrackerCommon/src
ALL_PRODS += DataFormatsTrackerCommon
DataFormatsTrackerCommon_INIT_FUNC        += $$(eval $$(call Library,DataFormatsTrackerCommon,src/DataFormats/TrackerCommon/src,src_DataFormats_TrackerCommon_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(DataFormatsTrackerCommon_files_exts),$(DataFormatsTrackerCommon_files_exts),$(SRC_FILES_SUFFIXES))))
endif
