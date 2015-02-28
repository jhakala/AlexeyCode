ifeq ($(strip $(DPGAnalysisSiStripToolsPlugins)),)
DPGAnalysisSiStripToolsPlugins_files := $(patsubst src/DPGAnalysis/SiStripTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/DPGAnalysis/SiStripTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DPGAnalysis/SiStripTools/plugins/$(file). Please fix src/DPGAnalysis/SiStripTools/plugins/BuildFile.))))
DPGAnalysisSiStripToolsPlugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(DPGAnalysisSiStripToolsPlugins_files))))
DPGAnalysisSiStripToolsPlugins := self/src/DPGAnalysis/SiStripTools/plugins
DPGAnalysisSiStripToolsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis/SiStripTools/plugins/BuildFile
DPGAnalysisSiStripToolsPlugins_LOC_USE   := self root boost FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry FWCore/Utilities CommonTools/Utils CommonTools/UtilAlgos DataFormats/SiStripDigi DataFormats/SiStripCluster DataFormats/SiPixelCluster DataFormats/Scalers DataFormats/DetId DataFormats/Common DataFormats/GeometryVector DPGAnalysis/SiStripTools DQM/SiStripCommon DQMServices/Core CommonTools/TrackerMap CalibFormats/SiStripObjects CondFormats/SiPixelObjects CondFormats/DataRecord CalibTracker/Records CalibTracker/SiStripCommon CalibTracker/SiPixelESProducers MagneticField/Records MagneticField/Engine RecoTracker/TransientTrackingRecHit DataFormats/VertexReco DataFormats/L1GlobalTrigger RecoLocalTracker/SiStripClusterizer DataFormats/TrackerRecHit2D HLTrigger/HLTcore Geometry/TrackerGeometryBuilder Geometry/CommonDetUnit Geometry/Records DataFormats/TrackerCommon
DPGAnalysisSiStripToolsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DPGAnalysisSiStripToolsPlugins,DPGAnalysisSiStripToolsPlugins,$(SCRAMSTORENAME_LIB)))
DPGAnalysisSiStripToolsPlugins_PACKAGE := self/src/DPGAnalysis/SiStripTools/plugins
ALL_PRODS += DPGAnalysisSiStripToolsPlugins
DPGAnalysisSiStripToolsPlugins_INIT_FUNC        += $$(eval $$(call Library,DPGAnalysisSiStripToolsPlugins,src/DPGAnalysis/SiStripTools/plugins,src_DPGAnalysis_SiStripTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(DPGAnalysisSiStripToolsPlugins_files_exts),$(DPGAnalysisSiStripToolsPlugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,DPGAnalysisSiStripToolsPlugins,src/DPGAnalysis/SiStripTools/plugins))
endif
ALL_COMMONRULES += src_DPGAnalysis_SiStripTools_plugins
src_DPGAnalysis_SiStripTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis_SiStripTools_plugins,src/DPGAnalysis/SiStripTools/plugins,PLUGINS))
