ALL_PACKAGES += $(patsubst src/%,%,src/RecoMET/METFilters)
subdirs_src_RecoMET_METFilters := src_RecoMET_METFilters_plugins src_RecoMET_METFilters_test src_RecoMET_METFilters_data src_RecoMET_METFilters_python
ifeq ($(strip $(PyAnalysisCodeTLBSMBHAnalyzerTLBSM)),)
PyAnalysisCodeTLBSMBHAnalyzerTLBSM := self/src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/python
PyAnalysisCodeTLBSMBHAnalyzerTLBSM_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/python)
ALL_PRODS += PyAnalysisCodeTLBSMBHAnalyzerTLBSM
PyAnalysisCodeTLBSMBHAnalyzerTLBSM_INIT_FUNC        += $$(eval $$(call PythonProduct,PyAnalysisCodeTLBSMBHAnalyzerTLBSM,src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/python,src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyAnalysisCodeTLBSMBHAnalyzerTLBSM,src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/python))
endif
ALL_COMMONRULES += src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_python
src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_python,src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/python,PYTHON))
src_RecoLuminosity_LumiDB_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/RecoLuminosity/LumiDB/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_RecoLuminosity_LumiDB_scripts,src/RecoLuminosity/LumiDB/scripts,$(SCRAMSTORENAME_BIN),*))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/DPGAnalysis)
subdirs_src_DPGAnalysis = src_DPGAnalysis_Skims src_DPGAnalysis_SiStripTools
ifeq ($(strip $(PhysicsToolsPatUtils_plugins)),)
PhysicsToolsPatUtils_plugins_files := $(patsubst src/PhysicsTools/PatUtils/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatUtils/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatUtils/plugins/$(file). Please fix src/PhysicsTools/PatUtils/plugins/BuildFile.))))
PhysicsToolsPatUtils_plugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(PhysicsToolsPatUtils_plugins_files))))
PhysicsToolsPatUtils_plugins := self/src/PhysicsTools/PatUtils/plugins
PhysicsToolsPatUtils_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatUtils/plugins/BuildFile
PhysicsToolsPatUtils_plugins_LOC_USE   := self FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CommonTools/Utils CondFormats/JetMETObjects DataFormats/Candidate DataFormats/JetReco DataFormats/METReco DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/PatCandidates JetMETCorrections/Objects JetMETCorrections/Type1MET RecoMET/METAlgorithms
PhysicsToolsPatUtils_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatUtils_plugins,PhysicsToolsPatUtils_plugins,$(SCRAMSTORENAME_LIB)))
PhysicsToolsPatUtils_plugins_PACKAGE := self/src/PhysicsTools/PatUtils/plugins
ALL_PRODS += PhysicsToolsPatUtils_plugins
PhysicsToolsPatUtils_plugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatUtils_plugins,src/PhysicsTools/PatUtils/plugins,src_PhysicsTools_PatUtils_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(PhysicsToolsPatUtils_plugins_files_exts),$(PhysicsToolsPatUtils_plugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatUtils_plugins,src/PhysicsTools/PatUtils/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_PatUtils_plugins
src_PhysicsTools_PatUtils_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_plugins,src/PhysicsTools/PatUtils/plugins,PLUGINS))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoLocalTracker)
subdirs_src_RecoLocalTracker = src_RecoLocalTracker_SubCollectionProducers
ALL_PACKAGES += $(patsubst src/%,%,src/JetMETCorrections/Type1MET)
subdirs_src_JetMETCorrections_Type1MET := src_JetMETCorrections_Type1MET_src src_JetMETCorrections_Type1MET_interface src_JetMETCorrections_Type1MET_plugins src_JetMETCorrections_Type1MET_data src_JetMETCorrections_Type1MET_doc src_JetMETCorrections_Type1MET_python
ALL_PACKAGES += $(patsubst src/%,%,src/DPGAnalysis/SiStripTools)
subdirs_src_DPGAnalysis_SiStripTools := src_DPGAnalysis_SiStripTools_src src_DPGAnalysis_SiStripTools_bin src_DPGAnalysis_SiStripTools_plugins src_DPGAnalysis_SiStripTools_test src_DPGAnalysis_SiStripTools_python
ALL_COMMONRULES += src_KKousour_MultiJetAnalysis_test
src_KKousour_MultiJetAnalysis_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_KKousour_MultiJetAnalysis_test,src/KKousour/MultiJetAnalysis/test,TEST))
ifeq ($(strip $(PyTopQuarkAnalysisTopPairBSM)),)
PyTopQuarkAnalysisTopPairBSM := self/src/TopQuarkAnalysis/TopPairBSM/python
PyTopQuarkAnalysisTopPairBSM_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/TopPairBSM/python)
ALL_PRODS += PyTopQuarkAnalysisTopPairBSM
PyTopQuarkAnalysisTopPairBSM_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisTopPairBSM,src/TopQuarkAnalysis/TopPairBSM/python,src_TopQuarkAnalysis_TopPairBSM_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisTopPairBSM,src/TopQuarkAnalysis/TopPairBSM/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopPairBSM_python
src_TopQuarkAnalysis_TopPairBSM_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopPairBSM_python,src/TopQuarkAnalysis/TopPairBSM/python,PYTHON))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoJets)
subdirs_src_RecoJets = src_RecoJets_JetAlgorithms src_RecoJets_JetProducers
ifeq ($(strip $(PyEGammaEGammaAnalysisTools)),)
PyEGammaEGammaAnalysisTools := self/src/EGamma/EGammaAnalysisTools/python
PyEGammaEGammaAnalysisTools_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/EGamma/EGammaAnalysisTools/python)
ALL_PRODS += PyEGammaEGammaAnalysisTools
PyEGammaEGammaAnalysisTools_INIT_FUNC        += $$(eval $$(call PythonProduct,PyEGammaEGammaAnalysisTools,src/EGamma/EGammaAnalysisTools/python,src_EGamma_EGammaAnalysisTools_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyEGammaEGammaAnalysisTools,src/EGamma/EGammaAnalysisTools/python))
endif
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_python
src_EGamma_EGammaAnalysisTools_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_python,src/EGamma/EGammaAnalysisTools/python,PYTHON))
ifeq ($(strip $(runtestPhysicsToolsPatAlgos)),)
runtestPhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/test/%,%,$(foreach file,runtestPhysicsToolsPatAlgos.cpp,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/test/$(file). Please fix src/PhysicsTools/PatAlgos/test/BuildFile.))))
runtestPhysicsToolsPatAlgos := self/src/PhysicsTools/PatAlgos/test
runtestPhysicsToolsPatAlgos_TEST_RUNNER_CMD :=  runtestPhysicsToolsPatAlgos  /bin/bash PhysicsTools/PatAlgos/test runtests.sh
runtestPhysicsToolsPatAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/test/BuildFile
runtestPhysicsToolsPatAlgos_LOC_USE   := self FWCore/Utilities
runtestPhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/test
ALL_PRODS += runtestPhysicsToolsPatAlgos
runtestPhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call Binary,runtestPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/test,src_PhysicsTools_PatAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),$(sort $(patsubst .%,%,$(suffix $(runtestPhysicsToolsPatAlgos_files)))),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/test))
endif
ifeq ($(strip $(PhysicsToolsPatAlgos_testAnalyzers)),)
PhysicsToolsPatAlgos_testAnalyzers_files := $(patsubst src/PhysicsTools/PatAlgos/test/%,%,$(foreach file,private/*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/test/$(file). Please fix src/PhysicsTools/PatAlgos/test/BuildFile.))))
PhysicsToolsPatAlgos_testAnalyzers_files_exts := $(sort $(patsubst .%,%,$(suffix $(PhysicsToolsPatAlgos_testAnalyzers_files))))
PhysicsToolsPatAlgos_testAnalyzers := self/src/PhysicsTools/PatAlgos/test
PhysicsToolsPatAlgos_testAnalyzers_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/test/BuildFile
PhysicsToolsPatAlgos_testAnalyzers_LOC_USE   := self FWCore/Framework FWCore/ParameterSet DataFormats/BTauReco PhysicsTools/PatUtils DataFormats/PatCandidates PhysicsTools/UtilAlgos root
PhysicsToolsPatAlgos_testAnalyzers_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatAlgos_testAnalyzers,PhysicsToolsPatAlgos_testAnalyzers,$(SCRAMSTORENAME_LIB)))
PhysicsToolsPatAlgos_testAnalyzers_PACKAGE := self/src/PhysicsTools/PatAlgos/test
ALL_PRODS += PhysicsToolsPatAlgos_testAnalyzers
PhysicsToolsPatAlgos_testAnalyzers_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos_testAnalyzers,src/PhysicsTools/PatAlgos/test,src_PhysicsTools_PatAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(PhysicsToolsPatAlgos_testAnalyzers_files_exts),$(PhysicsToolsPatAlgos_testAnalyzers_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatAlgos_testAnalyzers,src/PhysicsTools/PatAlgos/test))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_test
src_PhysicsTools_PatAlgos_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_test,src/PhysicsTools/PatAlgos/test,TEST))
ifeq ($(strip $(PyRecoMETMETAnalyzers)),)
PyRecoMETMETAnalyzers := self/src/RecoMET/METAnalyzers/python
PyRecoMETMETAnalyzers_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoMET/METAnalyzers/python)
ALL_PRODS += PyRecoMETMETAnalyzers
PyRecoMETMETAnalyzers_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoMETMETAnalyzers,src/RecoMET/METAnalyzers/python,src_RecoMET_METAnalyzers_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoMETMETAnalyzers,src/RecoMET/METAnalyzers/python))
endif
ALL_COMMONRULES += src_RecoMET_METAnalyzers_python
src_RecoMET_METAnalyzers_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoMET_METAnalyzers_python,src/RecoMET/METAnalyzers/python,PYTHON))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoLuminosity)
subdirs_src_RecoLuminosity = src_RecoLuminosity_LumiDB
ALL_PACKAGES += $(patsubst src/%,%,src/DataFormats/TrackerCommon)
subdirs_src_DataFormats_TrackerCommon := src_DataFormats_TrackerCommon_src src_DataFormats_TrackerCommon_interface
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/TopQuarkAnalysis)
subdirs_src_TopQuarkAnalysis = src_TopQuarkAnalysis_TopPairBSM
ALL_PACKAGES += $(patsubst src/%,%,src/TopQuarkAnalysis/TopPairBSM)
subdirs_src_TopQuarkAnalysis_TopPairBSM := src_TopQuarkAnalysis_TopPairBSM_src src_TopQuarkAnalysis_TopPairBSM_interface src_TopQuarkAnalysis_TopPairBSM_plugins src_TopQuarkAnalysis_TopPairBSM_test src_TopQuarkAnalysis_TopPairBSM_doc src_TopQuarkAnalysis_TopPairBSM_python
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/EGamma)
subdirs_src_EGamma = src_EGamma_EGammaAnalysisTools
ALL_PACKAGES += $(patsubst src/%,%,src/RecoJets/JetAlgorithms)
subdirs_src_RecoJets_JetAlgorithms := src_RecoJets_JetAlgorithms_src src_RecoJets_JetAlgorithms_interface src_RecoJets_JetAlgorithms_doc
ALL_PACKAGES += $(patsubst src/%,%,src/CRABJobs/JetHT_Run2012D-PromptReco-v1_Final2012)
subdirs_src_CRABJobs_JetHT_Run2012D-PromptReco-v1_Final2012 := 
ifeq ($(strip $(PyDPGAnalysisSiStripTools)),)
PyDPGAnalysisSiStripTools := self/src/DPGAnalysis/SiStripTools/python
PyDPGAnalysisSiStripTools_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/DPGAnalysis/SiStripTools/python)
ALL_PRODS += PyDPGAnalysisSiStripTools
PyDPGAnalysisSiStripTools_INIT_FUNC        += $$(eval $$(call PythonProduct,PyDPGAnalysisSiStripTools,src/DPGAnalysis/SiStripTools/python,src_DPGAnalysis_SiStripTools_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyDPGAnalysisSiStripTools,src/DPGAnalysis/SiStripTools/python))
endif
ALL_COMMONRULES += src_DPGAnalysis_SiStripTools_python
src_DPGAnalysis_SiStripTools_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis_SiStripTools_python,src/DPGAnalysis/SiStripTools/python,PYTHON))
ifeq ($(strip $(PyRecoJetsJetProducers)),)
PyRecoJetsJetProducers := self/src/RecoJets/JetProducers/python
PyRecoJetsJetProducers_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoJets/JetProducers/python)
ALL_PRODS += PyRecoJetsJetProducers
PyRecoJetsJetProducers_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoJetsJetProducers,src/RecoJets/JetProducers/python,src_RecoJets_JetProducers_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoJetsJetProducers,src/RecoJets/JetProducers/python))
endif
ALL_COMMONRULES += src_RecoJets_JetProducers_python
src_RecoJets_JetProducers_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoJets_JetProducers_python,src/RecoJets/JetProducers/python,PYTHON))
ifeq ($(strip $(METFilters_plugins)),)
METFilters_plugins_files := $(patsubst src/RecoMET/METFilters/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoMET/METFilters/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoMET/METFilters/plugins/$(file). Please fix src/RecoMET/METFilters/plugins/BuildFile.))))
METFilters_plugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(METFilters_plugins_files))))
METFilters_plugins := self/src/RecoMET/METFilters/plugins
METFilters_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoMET/METFilters/plugins/BuildFile
METFilters_plugins_LOC_USE   := self FWCore/Framework FWCore/ServiceRegistry FWCore/PluginManager FWCore/ParameterSet DataFormats/EcalRecHit DataFormats/EcalDetId Geometry/CaloTopology Geometry/CaloGeometry Geometry/Records CalibCalorimetry/EcalTPGTools CondFormats/EcalObjects DataFormats/PatCandidates DataFormats/ParticleFlowCandidate RecoParticleFlow/PFProducer DataFormats/ParticleFlowReco DataFormats/DetId CondFormats/DataRecord CommonTools/UtilAlgos CondFormats/HcalObjects DataFormats/HcalDetId DataFormats/HcalRecHit DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/StdDictionaries DataFormats/WrappedStdDictionaries RecoJets/JetAlgorithms RecoJets/JetProducers RecoMET/METAlgorithms root
METFilters_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,METFilters_plugins,METFilters_plugins,$(SCRAMSTORENAME_LIB)))
METFilters_plugins_PACKAGE := self/src/RecoMET/METFilters/plugins
ALL_PRODS += METFilters_plugins
METFilters_plugins_INIT_FUNC        += $$(eval $$(call Library,METFilters_plugins,src/RecoMET/METFilters/plugins,src_RecoMET_METFilters_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(METFilters_plugins_files_exts),$(METFilters_plugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,METFilters_plugins,src/RecoMET/METFilters/plugins))
endif
ALL_COMMONRULES += src_RecoMET_METFilters_plugins
src_RecoMET_METFilters_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoMET_METFilters_plugins,src/RecoMET/METFilters/plugins,PLUGINS))
ALL_COMMONRULES += src_TopQuarkAnalysis_TopPairBSM_test
src_TopQuarkAnalysis_TopPairBSM_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopPairBSM_test,src/TopQuarkAnalysis/TopPairBSM/test,TEST))
ifeq ($(strip $(CommonToolsParticleFlowTest)),)
CommonToolsParticleFlowTest_files := $(patsubst src/CommonTools/ParticleFlow/test/%,%,$(foreach file,PFIsoReaderDemo.cc,$(eval xfile:=$(wildcard src/CommonTools/ParticleFlow/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CommonTools/ParticleFlow/test/$(file). Please fix src/CommonTools/ParticleFlow/test/BuildFile.))))
CommonToolsParticleFlowTest_files_exts := $(sort $(patsubst .%,%,$(suffix $(CommonToolsParticleFlowTest_files))))
CommonToolsParticleFlowTest := self/src/CommonTools/ParticleFlow/test
CommonToolsParticleFlowTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/ParticleFlow/test/BuildFile
CommonToolsParticleFlowTest_LOC_USE   := self DataFormats/Common DataFormats/EgammaCandidates FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet PhysicsTools/UtilAlgos
CommonToolsParticleFlowTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CommonToolsParticleFlowTest,CommonToolsParticleFlowTest,$(SCRAMSTORENAME_LIB)))
CommonToolsParticleFlowTest_PACKAGE := self/src/CommonTools/ParticleFlow/test
ALL_PRODS += CommonToolsParticleFlowTest
CommonToolsParticleFlowTest_INIT_FUNC        += $$(eval $$(call Library,CommonToolsParticleFlowTest,src/CommonTools/ParticleFlow/test,src_CommonTools_ParticleFlow_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(CommonToolsParticleFlowTest_files_exts),$(CommonToolsParticleFlowTest_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,CommonToolsParticleFlowTest,src/CommonTools/ParticleFlow/test))
endif
ALL_COMMONRULES += src_CommonTools_ParticleFlow_test
src_CommonTools_ParticleFlow_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_ParticleFlow_test,src/CommonTools/ParticleFlow/test,TEST))
src_PhysicsTools_PatAlgos_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/PhysicsTools/PatAlgos/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_PhysicsTools_PatAlgos_scripts,src/PhysicsTools/PatAlgos/scripts,$(SCRAMSTORENAME_BIN),*))
ALL_PACKAGES += $(patsubst src/%,%,src/EGamma/EGammaAnalysisTools)
subdirs_src_EGamma_EGammaAnalysisTools := src_EGamma_EGammaAnalysisTools_src src_EGamma_EGammaAnalysisTools_plugins src_EGamma_EGammaAnalysisTools_test src_EGamma_EGammaAnalysisTools_python
ifeq ($(strip $(PyPhysicsToolsPatUtils)),)
PyPhysicsToolsPatUtils := self/src/PhysicsTools/PatUtils/python
PyPhysicsToolsPatUtils_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/PatUtils/python)
ALL_PRODS += PyPhysicsToolsPatUtils
PyPhysicsToolsPatUtils_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsPatUtils,src/PhysicsTools/PatUtils/python,src_PhysicsTools_PatUtils_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsPatUtils,src/PhysicsTools/PatUtils/python))
endif
ALL_COMMONRULES += src_PhysicsTools_PatUtils_python
src_PhysicsTools_PatUtils_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_python,src/PhysicsTools/PatUtils/python,PYTHON))
ifeq ($(strip $(PyRecoLuminosityLumiDB)),)
PyRecoLuminosityLumiDB := self/src/RecoLuminosity/LumiDB/python
PyRecoLuminosityLumiDB_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoLuminosity/LumiDB/python)
ALL_PRODS += PyRecoLuminosityLumiDB
PyRecoLuminosityLumiDB_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoLuminosityLumiDB,src/RecoLuminosity/LumiDB/python,src_RecoLuminosity_LumiDB_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoLuminosityLumiDB,src/RecoLuminosity/LumiDB/python))
endif
ALL_COMMONRULES += src_RecoLuminosity_LumiDB_python
src_RecoLuminosity_LumiDB_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoLuminosity_LumiDB_python,src/RecoLuminosity/LumiDB/python,PYTHON))
ifeq ($(strip $(JetMETCorrectionsType1MET_plugins)),)
JetMETCorrectionsType1MET_plugins_files := $(patsubst src/JetMETCorrections/Type1MET/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/JetMETCorrections/Type1MET/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/JetMETCorrections/Type1MET/plugins/$(file). Please fix src/JetMETCorrections/Type1MET/plugins/BuildFile.))))
JetMETCorrectionsType1MET_plugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(JetMETCorrectionsType1MET_plugins_files))))
JetMETCorrectionsType1MET_plugins := self/src/JetMETCorrections/Type1MET/plugins
JetMETCorrectionsType1MET_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETCorrections/Type1MET/plugins/BuildFile
JetMETCorrectionsType1MET_plugins_LOC_USE   := self FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CommonTools/Utils DataFormats/Candidate DataFormats/JetReco DataFormats/METReco DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/PatCandidates DataFormats/TauReco DataFormats/VertexReco JetMETCorrections/Objects JetMETCorrections/Type1MET
JetMETCorrectionsType1MET_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,JetMETCorrectionsType1MET_plugins,JetMETCorrectionsType1MET_plugins,$(SCRAMSTORENAME_LIB)))
JetMETCorrectionsType1MET_plugins_PACKAGE := self/src/JetMETCorrections/Type1MET/plugins
ALL_PRODS += JetMETCorrectionsType1MET_plugins
JetMETCorrectionsType1MET_plugins_INIT_FUNC        += $$(eval $$(call Library,JetMETCorrectionsType1MET_plugins,src/JetMETCorrections/Type1MET/plugins,src_JetMETCorrections_Type1MET_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(JetMETCorrectionsType1MET_plugins_files_exts),$(JetMETCorrectionsType1MET_plugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,JetMETCorrectionsType1MET_plugins,src/JetMETCorrections/Type1MET/plugins))
endif
ALL_COMMONRULES += src_JetMETCorrections_Type1MET_plugins
src_JetMETCorrections_Type1MET_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JetMETCorrections_Type1MET_plugins,src/JetMETCorrections/Type1MET/plugins,PLUGINS))
ALL_COMMONRULES += src_CommonTools_RecoAlgos_test
src_CommonTools_RecoAlgos_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_RecoAlgos_test,src/CommonTools/RecoAlgos/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/DataFormats)
subdirs_src_DataFormats = src_DataFormats_TrackerCommon
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/CRABJobs)
subdirs_src_CRABJobs = src_CRABJobs_JetHT_Run2012D-PromptReco-v1_Final2012 src_CRABJobs_SignalTest
ALL_PACKAGES += $(patsubst src/%,%,src/CommonTools/RecoUtils)
subdirs_src_CommonTools_RecoUtils := src_CommonTools_RecoUtils_src src_CommonTools_RecoUtils_plugins src_CommonTools_RecoUtils_test src_CommonTools_RecoUtils_python
ALL_PACKAGES += $(patsubst src/%,%,src/KKousour/MultiJetAnalysis)
subdirs_src_KKousour_MultiJetAnalysis := src_KKousour_MultiJetAnalysis_plugins src_KKousour_MultiJetAnalysis_test src_KKousour_MultiJetAnalysis_python
ifeq ($(strip $(PyRecoParticleFlowPFProducer)),)
PyRecoParticleFlowPFProducer := self/src/RecoParticleFlow/PFProducer/python
PyRecoParticleFlowPFProducer_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoParticleFlow/PFProducer/python)
ALL_PRODS += PyRecoParticleFlowPFProducer
PyRecoParticleFlowPFProducer_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoParticleFlowPFProducer,src/RecoParticleFlow/PFProducer/python,src_RecoParticleFlow_PFProducer_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoParticleFlowPFProducer,src/RecoParticleFlow/PFProducer/python))
endif
ALL_COMMONRULES += src_RecoParticleFlow_PFProducer_python
src_RecoParticleFlow_PFProducer_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoParticleFlow_PFProducer_python,src/RecoParticleFlow/PFProducer/python,PYTHON))
ALL_PACKAGES += $(patsubst src/%,%,src/RecoParticleFlow/PFProducer)
subdirs_src_RecoParticleFlow_PFProducer := src_RecoParticleFlow_PFProducer_src src_RecoParticleFlow_PFProducer_plugins src_RecoParticleFlow_PFProducer_test src_RecoParticleFlow_PFProducer_python
ALL_PACKAGES += $(patsubst src/%,%,src/PhysicsTools/PatUtils)
subdirs_src_PhysicsTools_PatUtils := src_PhysicsTools_PatUtils_src src_PhysicsTools_PatUtils_plugins src_PhysicsTools_PatUtils_data src_PhysicsTools_PatUtils_python
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/PhysicsTools)
subdirs_src_PhysicsTools = src_PhysicsTools_PatUtils src_PhysicsTools_PatAlgos
ifeq ($(strip $(PyRecoMETMETFilters)),)
PyRecoMETMETFilters := self/src/RecoMET/METFilters/python
PyRecoMETMETFilters_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoMET/METFilters/python)
ALL_PRODS += PyRecoMETMETFilters
PyRecoMETMETFilters_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoMETMETFilters,src/RecoMET/METFilters/python,src_RecoMET_METFilters_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoMETMETFilters,src/RecoMET/METFilters/python))
endif
ALL_COMMONRULES += src_RecoMET_METFilters_python
src_RecoMET_METFilters_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoMET_METFilters_python,src/RecoMET/METFilters/python,PYTHON))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/KKousour)
subdirs_src_KKousour = src_KKousour_MultiJetAnalysis
ALL_PACKAGES += $(patsubst src/%,%,src/CommonTools/RecoAlgos)
subdirs_src_CommonTools_RecoAlgos := src_CommonTools_RecoAlgos_src src_CommonTools_RecoAlgos_interface src_CommonTools_RecoAlgos_plugins src_CommonTools_RecoAlgos_test src_CommonTools_RecoAlgos_doc src_CommonTools_RecoAlgos_python
ifeq ($(strip $(CommonToolsParticleFlow_plugins)),)
CommonToolsParticleFlow_plugins_files := $(patsubst src/CommonTools/ParticleFlow/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/CommonTools/ParticleFlow/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CommonTools/ParticleFlow/plugins/$(file). Please fix src/CommonTools/ParticleFlow/plugins/BuildFile.))))
CommonToolsParticleFlow_plugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(CommonToolsParticleFlow_plugins_files))))
CommonToolsParticleFlow_plugins := self/src/CommonTools/ParticleFlow/plugins
CommonToolsParticleFlow_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/ParticleFlow/plugins/BuildFile
CommonToolsParticleFlow_plugins_LOC_USE   := self DataFormats/ParticleFlowCandidate DataFormats/JetReco DataFormats/TauReco DataFormats/METReco DataFormats/TrackReco DataFormats/VertexReco PhysicsTools/IsolationAlgos FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet JetMETCorrections/Objects CommonTools/Utils CommonTools/ParticleFlow
CommonToolsParticleFlow_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CommonToolsParticleFlow_plugins,CommonToolsParticleFlow_plugins,$(SCRAMSTORENAME_LIB)))
CommonToolsParticleFlow_plugins_PACKAGE := self/src/CommonTools/ParticleFlow/plugins
ALL_PRODS += CommonToolsParticleFlow_plugins
CommonToolsParticleFlow_plugins_INIT_FUNC        += $$(eval $$(call Library,CommonToolsParticleFlow_plugins,src/CommonTools/ParticleFlow/plugins,src_CommonTools_ParticleFlow_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(CommonToolsParticleFlow_plugins_files_exts),$(CommonToolsParticleFlow_plugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,CommonToolsParticleFlow_plugins,src/CommonTools/ParticleFlow/plugins))
endif
ALL_COMMONRULES += src_CommonTools_ParticleFlow_plugins
src_CommonTools_ParticleFlow_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_ParticleFlow_plugins,src/CommonTools/ParticleFlow/plugins,PLUGINS))
ifeq ($(strip $(EgammaEGammaAnalysisToolsTest)),)
EgammaEGammaAnalysisToolsTest_files := $(patsubst src/EGamma/EGammaAnalysisTools/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EGamma/EGammaAnalysisTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EGamma/EGammaAnalysisTools/test/$(file). Please fix src/EGamma/EGammaAnalysisTools/test/BuildFile.))))
EgammaEGammaAnalysisToolsTest_files_exts := $(sort $(patsubst .%,%,$(suffix $(EgammaEGammaAnalysisToolsTest_files))))
EgammaEGammaAnalysisToolsTest := self/src/EGamma/EGammaAnalysisTools/test
EgammaEGammaAnalysisToolsTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/EGamma/EGammaAnalysisTools/test/BuildFile
EgammaEGammaAnalysisToolsTest_LOC_USE   := self DataFormats/Common DataFormats/EgammaReco DataFormats/GsfTrackReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet RecoParticleFlow/PFProducer EGamma/EGammaAnalysisTools clhep root roottmva
EgammaEGammaAnalysisToolsTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EgammaEGammaAnalysisToolsTest,EgammaEGammaAnalysisToolsTest,$(SCRAMSTORENAME_LIB)))
EgammaEGammaAnalysisToolsTest_PACKAGE := self/src/EGamma/EGammaAnalysisTools/test
ALL_PRODS += EgammaEGammaAnalysisToolsTest
EgammaEGammaAnalysisToolsTest_INIT_FUNC        += $$(eval $$(call Library,EgammaEGammaAnalysisToolsTest,src/EGamma/EGammaAnalysisTools/test,src_EGamma_EGammaAnalysisTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(EgammaEGammaAnalysisToolsTest_files_exts),$(EgammaEGammaAnalysisToolsTest_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,EgammaEGammaAnalysisToolsTest,src/EGamma/EGammaAnalysisTools/test))
endif
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_test
src_EGamma_EGammaAnalysisTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_test,src/EGamma/EGammaAnalysisTools/test,TEST))
ifeq ($(strip $(KKousourMultiJetAnalysisPlugins)),)
KKousourMultiJetAnalysisPlugins_files := $(patsubst src/KKousour/MultiJetAnalysis/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/KKousour/MultiJetAnalysis/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/KKousour/MultiJetAnalysis/plugins/$(file). Please fix src/KKousour/MultiJetAnalysis/plugins/BuildFile.))))
KKousourMultiJetAnalysisPlugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(KKousourMultiJetAnalysisPlugins_files))))
KKousourMultiJetAnalysisPlugins := self/src/KKousour/MultiJetAnalysis/plugins
KKousourMultiJetAnalysisPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/KKousour/MultiJetAnalysis/plugins/BuildFile
KKousourMultiJetAnalysisPlugins_LOC_USE   := self rootcore rootrflx RecoMET/METAlgorithms JetMETCorrections/Algorithms RecoJets/JetAlgorithms DataFormats/JetReco DataFormats/VertexReco DataFormats/Candidate DataFormats/Common DataFormats/HepMCCandidate DataFormats/TrackCandidate DataFormats/HLTReco PhysicsTools/UtilAlgos JetMETCorrections/Objects FWCore/Framework FWCore/PluginManager FWCore/ServiceRegistry clhep root HLTrigger/HLTcore L1Trigger/GlobalTriggerAnalyzer CondFormats/L1TObjects CondFormats/DataRecord
KKousourMultiJetAnalysisPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,KKousourMultiJetAnalysisPlugins,KKousourMultiJetAnalysisPlugins,$(SCRAMSTORENAME_LIB)))
KKousourMultiJetAnalysisPlugins_PACKAGE := self/src/KKousour/MultiJetAnalysis/plugins
ALL_PRODS += KKousourMultiJetAnalysisPlugins
KKousourMultiJetAnalysisPlugins_INIT_FUNC        += $$(eval $$(call Library,KKousourMultiJetAnalysisPlugins,src/KKousour/MultiJetAnalysis/plugins,src_KKousour_MultiJetAnalysis_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(KKousourMultiJetAnalysisPlugins_files_exts),$(KKousourMultiJetAnalysisPlugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,KKousourMultiJetAnalysisPlugins,src/KKousour/MultiJetAnalysis/plugins))
endif
ALL_COMMONRULES += src_KKousour_MultiJetAnalysis_plugins
src_KKousour_MultiJetAnalysis_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_KKousour_MultiJetAnalysis_plugins,src/KKousour/MultiJetAnalysis/plugins,PLUGINS))
ALL_COMMONRULES += src_RecoLuminosity_LumiDB_test
src_RecoLuminosity_LumiDB_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoLuminosity_LumiDB_test,src/RecoLuminosity/LumiDB/test,TEST))
ifeq ($(strip $(PyPhysicsToolsPatAlgos)),)
PyPhysicsToolsPatAlgos := self/src/PhysicsTools/PatAlgos/python
PyPhysicsToolsPatAlgos_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/PatAlgos/python)
ALL_PRODS += PyPhysicsToolsPatAlgos
PyPhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/python,src_PhysicsTools_PatAlgos_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/python))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_python
src_PhysicsTools_PatAlgos_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_python,src/PhysicsTools/PatAlgos/python,PYTHON))
ifeq ($(strip $(RecoParticleFlowPFProducerPlugins)),)
RecoParticleFlowPFProducerPlugins_files := $(patsubst src/RecoParticleFlow/PFProducer/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoParticleFlow/PFProducer/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoParticleFlow/PFProducer/plugins/$(file). Please fix src/RecoParticleFlow/PFProducer/plugins/BuildFile.))))
RecoParticleFlowPFProducerPlugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(RecoParticleFlowPFProducerPlugins_files))))
RecoParticleFlowPFProducerPlugins := self/src/RecoParticleFlow/PFProducer/plugins
RecoParticleFlowPFProducerPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFProducer/plugins/BuildFile
RecoParticleFlowPFProducerPlugins_LOC_USE   := self CondFormats/DataRecord CondFormats/PhysicsToolsObjects DataFormats/CaloRecHit DataFormats/Common DataFormats/EgammaReco DataFormats/EgammaTrackReco DataFormats/GsfTrackReco DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities RecoParticleFlow/PFClusterTools RecoParticleFlow/PFProducer RecoEcal/EgammaCoreTools Geometry/CaloTopology RecoEgamma/EgammaIsolationAlgos RecoEgamma/PhotonIdentification
RecoParticleFlowPFProducerPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoParticleFlowPFProducerPlugins,RecoParticleFlowPFProducerPlugins,$(SCRAMSTORENAME_LIB)))
RecoParticleFlowPFProducerPlugins_PACKAGE := self/src/RecoParticleFlow/PFProducer/plugins
ALL_PRODS += RecoParticleFlowPFProducerPlugins
RecoParticleFlowPFProducerPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowPFProducerPlugins,src/RecoParticleFlow/PFProducer/plugins,src_RecoParticleFlow_PFProducer_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoParticleFlowPFProducerPlugins_files_exts),$(RecoParticleFlowPFProducerPlugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,RecoParticleFlowPFProducerPlugins,src/RecoParticleFlow/PFProducer/plugins))
endif
ALL_COMMONRULES += src_RecoParticleFlow_PFProducer_plugins
src_RecoParticleFlow_PFProducer_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoParticleFlow_PFProducer_plugins,src/RecoParticleFlow/PFProducer/plugins,PLUGINS))
ifeq ($(strip $(PyCommonToolsParticleFlow)),)
PyCommonToolsParticleFlow := self/src/CommonTools/ParticleFlow/python
PyCommonToolsParticleFlow_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/CommonTools/ParticleFlow/python)
ALL_PRODS += PyCommonToolsParticleFlow
PyCommonToolsParticleFlow_INIT_FUNC        += $$(eval $$(call PythonProduct,PyCommonToolsParticleFlow,src/CommonTools/ParticleFlow/python,src_CommonTools_ParticleFlow_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyCommonToolsParticleFlow,src/CommonTools/ParticleFlow/python))
endif
ALL_COMMONRULES += src_CommonTools_ParticleFlow_python
src_CommonTools_ParticleFlow_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_ParticleFlow_python,src/CommonTools/ParticleFlow/python,PYTHON))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/AnalysisCodeTLBSM)
subdirs_src_AnalysisCodeTLBSM = src_AnalysisCodeTLBSM_BHAnalyzerTLBSM
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoMET)
subdirs_src_RecoMET = src_RecoMET_METAnalyzers src_RecoMET_METFilters
ifeq ($(strip $(CommonToolsRecoAlgos_plugins)),)
CommonToolsRecoAlgos_plugins_files := $(patsubst src/CommonTools/RecoAlgos/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/CommonTools/RecoAlgos/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CommonTools/RecoAlgos/plugins/$(file). Please fix src/CommonTools/RecoAlgos/plugins/BuildFile.))))
CommonToolsRecoAlgos_plugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(CommonToolsRecoAlgos_plugins_files))))
CommonToolsRecoAlgos_plugins := self/src/CommonTools/RecoAlgos/plugins
CommonToolsRecoAlgos_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/RecoAlgos/plugins/BuildFile
CommonToolsRecoAlgos_plugins_LOC_USE   := self MagneticField/Engine FWCore/Framework FWCore/ParameterSet DataFormats/RecoCandidate DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/MuonReco DataFormats/JetReco DataFormats/METReco DataFormats/HcalRecHit SimDataFormats/TrackingAnalysis TrackingTools/PatternTools CommonTools/Utils CommonTools/RecoAlgos MagneticField/Records Geometry/Records Geometry/TrackerGeometryBuilder
CommonToolsRecoAlgos_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CommonToolsRecoAlgos_plugins,CommonToolsRecoAlgos_plugins,$(SCRAMSTORENAME_LIB)))
CommonToolsRecoAlgos_plugins_PACKAGE := self/src/CommonTools/RecoAlgos/plugins
ALL_PRODS += CommonToolsRecoAlgos_plugins
CommonToolsRecoAlgos_plugins_INIT_FUNC        += $$(eval $$(call Library,CommonToolsRecoAlgos_plugins,src/CommonTools/RecoAlgos/plugins,src_CommonTools_RecoAlgos_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(CommonToolsRecoAlgos_plugins_files_exts),$(CommonToolsRecoAlgos_plugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,CommonToolsRecoAlgos_plugins,src/CommonTools/RecoAlgos/plugins))
endif
ALL_COMMONRULES += src_CommonTools_RecoAlgos_plugins
src_CommonTools_RecoAlgos_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_RecoAlgos_plugins,src/CommonTools/RecoAlgos/plugins,PLUGINS))
ifeq ($(strip $(RecoJetsJetProducers_plugins)),)
RecoJetsJetProducers_plugins_files := $(patsubst src/RecoJets/JetProducers/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoJets/JetProducers/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoJets/JetProducers/plugins/$(file). Please fix src/RecoJets/JetProducers/plugins/BuildFile.))))
RecoJetsJetProducers_plugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(RecoJetsJetProducers_plugins_files))))
RecoJetsJetProducers_plugins := self/src/RecoJets/JetProducers/plugins
RecoJetsJetProducers_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoJets/JetProducers/plugins/BuildFile
RecoJetsJetProducers_plugins_LOC_USE   := self RecoJets/JetProducers RecoJets/JetAlgorithms FWCore/Framework DataFormats/JetReco DataFormats/VertexReco Geometry/CaloGeometry Geometry/Records CommonTools/UtilAlgos fastjet
RecoJetsJetProducers_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoJetsJetProducers_plugins,RecoJetsJetProducers_plugins,$(SCRAMSTORENAME_LIB)))
RecoJetsJetProducers_plugins_PACKAGE := self/src/RecoJets/JetProducers/plugins
ALL_PRODS += RecoJetsJetProducers_plugins
RecoJetsJetProducers_plugins_INIT_FUNC        += $$(eval $$(call Library,RecoJetsJetProducers_plugins,src/RecoJets/JetProducers/plugins,src_RecoJets_JetProducers_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoJetsJetProducers_plugins_files_exts),$(RecoJetsJetProducers_plugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,RecoJetsJetProducers_plugins,src/RecoJets/JetProducers/plugins))
endif
ALL_COMMONRULES += src_RecoJets_JetProducers_plugins
src_RecoJets_JetProducers_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoJets_JetProducers_plugins,src/RecoJets/JetProducers/plugins,PLUGINS))
ALL_PACKAGES += $(patsubst src/%,%,src/RecoJets/JetProducers)
subdirs_src_RecoJets_JetProducers := src_RecoJets_JetProducers_src src_RecoJets_JetProducers_validation src_RecoJets_JetProducers_interface src_RecoJets_JetProducers_plugins src_RecoJets_JetProducers_test src_RecoJets_JetProducers_doc src_RecoJets_JetProducers_python
ALL_PACKAGES += $(patsubst src/%,%,src/PhysicsTools/PatAlgos)
subdirs_src_PhysicsTools_PatAlgos := src_PhysicsTools_PatAlgos_src src_PhysicsTools_PatAlgos_scripts src_PhysicsTools_PatAlgos_plugins src_PhysicsTools_PatAlgos_test src_PhysicsTools_PatAlgos_python
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/CommonTools)
subdirs_src_CommonTools = src_CommonTools_RecoUtils src_CommonTools_RecoAlgos src_CommonTools_ParticleFlow
ALL_COMMONRULES += src_RecoMET_METFilters_test
src_RecoMET_METFilters_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoMET_METFilters_test,src/RecoMET/METFilters/test,TEST))
ifeq ($(strip $(PyKKousourMultiJetAnalysis)),)
PyKKousourMultiJetAnalysis := self/src/KKousour/MultiJetAnalysis/python
PyKKousourMultiJetAnalysis_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/KKousour/MultiJetAnalysis/python)
ALL_PRODS += PyKKousourMultiJetAnalysis
PyKKousourMultiJetAnalysis_INIT_FUNC        += $$(eval $$(call PythonProduct,PyKKousourMultiJetAnalysis,src/KKousour/MultiJetAnalysis/python,src_KKousour_MultiJetAnalysis_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyKKousourMultiJetAnalysis,src/KKousour/MultiJetAnalysis/python))
endif
ALL_COMMONRULES += src_KKousour_MultiJetAnalysis_python
src_KKousour_MultiJetAnalysis_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_KKousour_MultiJetAnalysis_python,src/KKousour/MultiJetAnalysis/python,PYTHON))
ALL_COMMONRULES += src_CommonTools_RecoUtils_test
src_CommonTools_RecoUtils_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_RecoUtils_test,src/CommonTools/RecoUtils/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/RecoLocalTracker/SubCollectionProducers)
subdirs_src_RecoLocalTracker_SubCollectionProducers := src_RecoLocalTracker_SubCollectionProducers_src src_RecoLocalTracker_SubCollectionProducers_python
ifeq ($(strip $(PyCommonToolsRecoAlgos)),)
PyCommonToolsRecoAlgos := self/src/CommonTools/RecoAlgos/python
PyCommonToolsRecoAlgos_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/CommonTools/RecoAlgos/python)
ALL_PRODS += PyCommonToolsRecoAlgos
PyCommonToolsRecoAlgos_INIT_FUNC        += $$(eval $$(call PythonProduct,PyCommonToolsRecoAlgos,src/CommonTools/RecoAlgos/python,src_CommonTools_RecoAlgos_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyCommonToolsRecoAlgos,src/CommonTools/RecoAlgos/python))
endif
ALL_COMMONRULES += src_CommonTools_RecoAlgos_python
src_CommonTools_RecoAlgos_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_RecoAlgos_python,src/CommonTools/RecoAlgos/python,PYTHON))
ALL_PACKAGES += $(patsubst src/%,%,src/DPGAnalysis/Skims)
subdirs_src_DPGAnalysis_Skims := src_DPGAnalysis_Skims_src src_DPGAnalysis_Skims_interface src_DPGAnalysis_Skims_data src_DPGAnalysis_Skims_doc src_DPGAnalysis_Skims_python
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
ALL_PACKAGES += $(patsubst src/%,%,src/CommonTools/ParticleFlow)
subdirs_src_CommonTools_ParticleFlow := src_CommonTools_ParticleFlow_src src_CommonTools_ParticleFlow_plugins src_CommonTools_ParticleFlow_test src_CommonTools_ParticleFlow_python
ALL_COMMONRULES += src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_test
src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_test,src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/test,TEST))
ifeq ($(strip $(DPGAnalysisSiStripToolsMacros)),)
DPGAnalysisSiStripToolsMacros_files := $(patsubst src/DPGAnalysis/SiStripTools/bin/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/DPGAnalysis/SiStripTools/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DPGAnalysis/SiStripTools/bin/$(file). Please fix src/DPGAnalysis/SiStripTools/bin/BuildFile.))))
DPGAnalysisSiStripToolsMacros_files_exts := $(sort $(patsubst .%,%,$(suffix $(DPGAnalysisSiStripToolsMacros_files))))
DPGAnalysisSiStripToolsMacros := self/src/DPGAnalysis/SiStripTools/bin
DPGAnalysisSiStripToolsMacros_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis/SiStripTools/bin/BuildFile
DPGAnalysisSiStripToolsMacros_LOC_USE   := self root rootcintex rootgraphics
DPGAnalysisSiStripToolsMacros_PRE_INIT_FUNC += $$(eval $$(call RootDict,DPGAnalysisSiStripToolsMacros,src/DPGAnalysis/SiStripTools/bin, DPGAnalysisSiStripToolsMacrosLinkDef.h))
DPGAnalysisSiStripToolsMacros_PACKAGE := self/src/DPGAnalysis/SiStripTools/bin
ALL_PRODS += DPGAnalysisSiStripToolsMacros
DPGAnalysisSiStripToolsMacros_INIT_FUNC        += $$(eval $$(call Library,DPGAnalysisSiStripToolsMacros,src/DPGAnalysis/SiStripTools/bin,src_DPGAnalysis_SiStripTools_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(DPGAnalysisSiStripToolsMacros_files_exts),$(DPGAnalysisSiStripToolsMacros_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,DPGAnalysisSiStripToolsMacros,src/DPGAnalysis/SiStripTools/bin))
endif
ALL_COMMONRULES += src_DPGAnalysis_SiStripTools_bin
src_DPGAnalysis_SiStripTools_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis_SiStripTools_bin,src/DPGAnalysis/SiStripTools/bin,BINARY))
ALL_PACKAGES += $(patsubst src/%,%,src/AnalysisCodeTLBSM/BHAnalyzerTLBSM)
subdirs_src_AnalysisCodeTLBSM_BHAnalyzerTLBSM := src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_src src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_test src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_python
ALL_COMMONRULES += src_RecoMET_METAnalyzers_test
src_RecoMET_METAnalyzers_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoMET_METAnalyzers_test,src/RecoMET/METAnalyzers/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/CRABJobs/SignalTest)
subdirs_src_CRABJobs_SignalTest := 
ifeq ($(strip $(PyRecoLocalTrackerSubCollectionProducers)),)
PyRecoLocalTrackerSubCollectionProducers := self/src/RecoLocalTracker/SubCollectionProducers/python
PyRecoLocalTrackerSubCollectionProducers_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoLocalTracker/SubCollectionProducers/python)
ALL_PRODS += PyRecoLocalTrackerSubCollectionProducers
PyRecoLocalTrackerSubCollectionProducers_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoLocalTrackerSubCollectionProducers,src/RecoLocalTracker/SubCollectionProducers/python,src_RecoLocalTracker_SubCollectionProducers_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoLocalTrackerSubCollectionProducers,src/RecoLocalTracker/SubCollectionProducers/python))
endif
ALL_COMMONRULES += src_RecoLocalTracker_SubCollectionProducers_python
src_RecoLocalTracker_SubCollectionProducers_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoLocalTracker_SubCollectionProducers_python,src/RecoLocalTracker/SubCollectionProducers/python,PYTHON))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/JetMETCorrections)
subdirs_src_JetMETCorrections = src_JetMETCorrections_Type1MET
ifeq ($(strip $(PyJetMETCorrectionsType1MET)),)
PyJetMETCorrectionsType1MET := self/src/JetMETCorrections/Type1MET/python
PyJetMETCorrectionsType1MET_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/JetMETCorrections/Type1MET/python)
ALL_PRODS += PyJetMETCorrectionsType1MET
PyJetMETCorrectionsType1MET_INIT_FUNC        += $$(eval $$(call PythonProduct,PyJetMETCorrectionsType1MET,src/JetMETCorrections/Type1MET/python,src_JetMETCorrections_Type1MET_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyJetMETCorrectionsType1MET,src/JetMETCorrections/Type1MET/python))
endif
ALL_COMMONRULES += src_JetMETCorrections_Type1MET_python
src_JetMETCorrections_Type1MET_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JetMETCorrections_Type1MET_python,src/JetMETCorrections/Type1MET/python,PYTHON))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoParticleFlow)
subdirs_src_RecoParticleFlow = src_RecoParticleFlow_PFProducer
ALL_PACKAGES += $(patsubst src/%,%,src/RecoMET/METAnalyzers)
subdirs_src_RecoMET_METAnalyzers := src_RecoMET_METAnalyzers_src src_RecoMET_METAnalyzers_test src_RecoMET_METAnalyzers_python
ifeq ($(strip $(EGammaEGammaAnalysisToolsPlugins)),)
EGammaEGammaAnalysisToolsPlugins_files := $(patsubst src/EGamma/EGammaAnalysisTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EGamma/EGammaAnalysisTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EGamma/EGammaAnalysisTools/plugins/$(file). Please fix src/EGamma/EGammaAnalysisTools/plugins/BuildFile.))))
EGammaEGammaAnalysisToolsPlugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(EGammaEGammaAnalysisToolsPlugins_files))))
EGammaEGammaAnalysisToolsPlugins := self/src/EGamma/EGammaAnalysisTools/plugins
EGammaEGammaAnalysisToolsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/EGamma/EGammaAnalysisTools/plugins/BuildFile
EGammaEGammaAnalysisToolsPlugins_LOC_USE   := self FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger DataFormats/EgammaCandidates CommonTools/Utils HLTrigger/HLTcore EGamma/EGammaAnalysisTools
EGammaEGammaAnalysisToolsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EGammaEGammaAnalysisToolsPlugins,EGammaEGammaAnalysisToolsPlugins,$(SCRAMSTORENAME_LIB)))
EGammaEGammaAnalysisToolsPlugins_PACKAGE := self/src/EGamma/EGammaAnalysisTools/plugins
ALL_PRODS += EGammaEGammaAnalysisToolsPlugins
EGammaEGammaAnalysisToolsPlugins_INIT_FUNC        += $$(eval $$(call Library,EGammaEGammaAnalysisToolsPlugins,src/EGamma/EGammaAnalysisTools/plugins,src_EGamma_EGammaAnalysisTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(EGammaEGammaAnalysisToolsPlugins_files_exts),$(EGammaEGammaAnalysisToolsPlugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,EGammaEGammaAnalysisToolsPlugins,src/EGamma/EGammaAnalysisTools/plugins))
endif
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_plugins
src_EGamma_EGammaAnalysisTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_plugins,src/EGamma/EGammaAnalysisTools/plugins,PLUGINS))
ifeq ($(strip $(PhysicsToolsPatAlgos_plugins)),)
PhysicsToolsPatAlgos_plugins_files := $(patsubst src/PhysicsTools/PatAlgos/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/plugins/$(file). Please fix src/PhysicsTools/PatAlgos/plugins/BuildFile.))))
PhysicsToolsPatAlgos_plugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(PhysicsToolsPatAlgos_plugins_files))))
PhysicsToolsPatAlgos_plugins := self/src/PhysicsTools/PatAlgos/plugins
PhysicsToolsPatAlgos_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/plugins/BuildFile
PhysicsToolsPatAlgos_plugins_LOC_USE   := self PhysicsTools/PatAlgos FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/MessageService L1Trigger/GlobalTriggerAnalyzer HLTrigger/HLTcore DataFormats/PatCandidates DataFormats/BTauReco DataFormats/JetReco DataFormats/TrackReco DataFormats/Candidate DataFormats/HeavyIonEvent PhysicsTools/PatUtils CondFormats/JetMETObjects JetMETCorrections/Objects TrackingTools/TransientTrack SimDataFormats/Track SimDataFormats/Vertex SimGeneral/HepPDTRecord RecoMET/METAlgorithms RecoEgamma/EgammaTools TrackingTools/IPTools root
PhysicsToolsPatAlgos_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatAlgos_plugins,PhysicsToolsPatAlgos_plugins,$(SCRAMSTORENAME_LIB)))
PhysicsToolsPatAlgos_plugins_PACKAGE := self/src/PhysicsTools/PatAlgos/plugins
ALL_PRODS += PhysicsToolsPatAlgos_plugins
PhysicsToolsPatAlgos_plugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins,src_PhysicsTools_PatAlgos_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(PhysicsToolsPatAlgos_plugins_files_exts),$(PhysicsToolsPatAlgos_plugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_plugins
src_PhysicsTools_PatAlgos_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins,PLUGINS))
ifeq ($(strip $(PyDPGAnalysisSkims)),)
PyDPGAnalysisSkims := self/src/DPGAnalysis/Skims/python
PyDPGAnalysisSkims_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/DPGAnalysis/Skims/python)
ALL_PRODS += PyDPGAnalysisSkims
PyDPGAnalysisSkims_INIT_FUNC        += $$(eval $$(call PythonProduct,PyDPGAnalysisSkims,src/DPGAnalysis/Skims/python,src_DPGAnalysis_Skims_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyDPGAnalysisSkims,src/DPGAnalysis/Skims/python))
endif
ALL_COMMONRULES += src_DPGAnalysis_Skims_python
src_DPGAnalysis_Skims_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis_Skims_python,src/DPGAnalysis/Skims/python,PYTHON))
ifeq ($(strip $(PFPUAssoMapPlugins)),)
PFPUAssoMapPlugins_files := $(patsubst src/CommonTools/RecoUtils/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/CommonTools/RecoUtils/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CommonTools/RecoUtils/plugins/$(file). Please fix src/CommonTools/RecoUtils/plugins/BuildFile.))))
PFPUAssoMapPlugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(PFPUAssoMapPlugins_files))))
PFPUAssoMapPlugins := self/src/CommonTools/RecoUtils/plugins
PFPUAssoMapPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/RecoUtils/plugins/BuildFile
PFPUAssoMapPlugins_LOC_USE   := self FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/ServiceRegistry CommonTools/UtilAlgos CommonTools/RecoUtils DataFormats/BeamSpot DataFormats/Common DataFormats/TrackReco DataFormats/VertexReco DataFormats/EgammaCandidates DataFormats/RecoCandidate DataFormats/ParticleFlowReco DQMServices/Core MagneticField/Records MagneticField/Engine SimDataFormats/TrackingAnalysis SimDataFormats/PileupSummaryInfo SimDataFormats/GeneratorProducts SimTracker/TrackAssociation SimTracker/Records TrackingTools/TransientTrack TrackingTools/IPTools
PFPUAssoMapPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PFPUAssoMapPlugins,PFPUAssoMapPlugins,$(SCRAMSTORENAME_LIB)))
PFPUAssoMapPlugins_PACKAGE := self/src/CommonTools/RecoUtils/plugins
ALL_PRODS += PFPUAssoMapPlugins
PFPUAssoMapPlugins_INIT_FUNC        += $$(eval $$(call Library,PFPUAssoMapPlugins,src/CommonTools/RecoUtils/plugins,src_CommonTools_RecoUtils_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(PFPUAssoMapPlugins_files_exts),$(PFPUAssoMapPlugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,PFPUAssoMapPlugins,src/CommonTools/RecoUtils/plugins))
endif
ALL_COMMONRULES += src_CommonTools_RecoUtils_plugins
src_CommonTools_RecoUtils_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_RecoUtils_plugins,src/CommonTools/RecoUtils/plugins,PLUGINS))
ifeq ($(strip $(CATopJetTagger)),)
CATopJetTagger_files := $(patsubst src/TopQuarkAnalysis/TopPairBSM/plugins/%,%,$(foreach file,CATopJetTagger.cc,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopPairBSM/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopPairBSM/plugins/$(file). Please fix src/TopQuarkAnalysis/TopPairBSM/plugins/BuildFile.))))
CATopJetTagger_files_exts := $(sort $(patsubst .%,%,$(suffix $(CATopJetTagger_files))))
CATopJetTagger := self/src/TopQuarkAnalysis/TopPairBSM/plugins
CATopJetTagger_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopPairBSM/plugins/BuildFile
CATopJetTagger_LOC_USE   := self AnalysisDataFormats/TopObjects DataFormats/Candidate DataFormats/Common DataFormats/PatCandidates DataFormats/BeamSpot DataFormats/Math FWCore/Framework FWCore/ParameterSet TopQuarkAnalysis/TopTools rootcore root TopQuarkAnalysis/TopPairBSM
CATopJetTagger_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CATopJetTagger,CATopJetTagger,$(SCRAMSTORENAME_LIB)))
CATopJetTagger_PACKAGE := self/src/TopQuarkAnalysis/TopPairBSM/plugins
ALL_PRODS += CATopJetTagger
CATopJetTagger_INIT_FUNC        += $$(eval $$(call Library,CATopJetTagger,src/TopQuarkAnalysis/TopPairBSM/plugins,src_TopQuarkAnalysis_TopPairBSM_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(CATopJetTagger_files_exts),$(CATopJetTagger_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,CATopJetTagger,src/TopQuarkAnalysis/TopPairBSM/plugins))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopPairBSM_plugins
src_TopQuarkAnalysis_TopPairBSM_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopPairBSM_plugins,src/TopQuarkAnalysis/TopPairBSM/plugins,PLUGINS))
ifeq ($(strip $(RecoParticleFlowPFSuperClusterReader)),)
RecoParticleFlowPFSuperClusterReader_files := $(patsubst src/RecoParticleFlow/PFProducer/test/%,%,$(foreach file,PFSuperClusterReader.cc,$(eval xfile:=$(wildcard src/RecoParticleFlow/PFProducer/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoParticleFlow/PFProducer/test/$(file). Please fix src/RecoParticleFlow/PFProducer/test/BuildFile.))))
RecoParticleFlowPFSuperClusterReader_files_exts := $(sort $(patsubst .%,%,$(suffix $(RecoParticleFlowPFSuperClusterReader_files))))
RecoParticleFlowPFSuperClusterReader := self/src/RecoParticleFlow/PFProducer/test
RecoParticleFlowPFSuperClusterReader_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFProducer/test/BuildFile
RecoParticleFlowPFSuperClusterReader_LOC_USE   := self DataFormats/Common DataFormats/EgammaReco DataFormats/GsfTrackReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet
RecoParticleFlowPFSuperClusterReader_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoParticleFlowPFSuperClusterReader,RecoParticleFlowPFSuperClusterReader,$(SCRAMSTORENAME_LIB)))
RecoParticleFlowPFSuperClusterReader_PACKAGE := self/src/RecoParticleFlow/PFProducer/test
ALL_PRODS += RecoParticleFlowPFSuperClusterReader
RecoParticleFlowPFSuperClusterReader_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowPFSuperClusterReader,src/RecoParticleFlow/PFProducer/test,src_RecoParticleFlow_PFProducer_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoParticleFlowPFSuperClusterReader_files_exts),$(RecoParticleFlowPFSuperClusterReader_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,RecoParticleFlowPFSuperClusterReader,src/RecoParticleFlow/PFProducer/test))
endif
ifeq ($(strip $(RecoParticleFlowPFIsoReader)),)
RecoParticleFlowPFIsoReader_files := $(patsubst src/RecoParticleFlow/PFProducer/test/%,%,$(foreach file,PFIsoReader.cc,$(eval xfile:=$(wildcard src/RecoParticleFlow/PFProducer/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoParticleFlow/PFProducer/test/$(file). Please fix src/RecoParticleFlow/PFProducer/test/BuildFile.))))
RecoParticleFlowPFIsoReader_files_exts := $(sort $(patsubst .%,%,$(suffix $(RecoParticleFlowPFIsoReader_files))))
RecoParticleFlowPFIsoReader := self/src/RecoParticleFlow/PFProducer/test
RecoParticleFlowPFIsoReader_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFProducer/test/BuildFile
RecoParticleFlowPFIsoReader_LOC_USE   := self DataFormats/Common DataFormats/EgammaReco DataFormats/GsfTrackReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet
RecoParticleFlowPFIsoReader_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoParticleFlowPFIsoReader,RecoParticleFlowPFIsoReader,$(SCRAMSTORENAME_LIB)))
RecoParticleFlowPFIsoReader_PACKAGE := self/src/RecoParticleFlow/PFProducer/test
ALL_PRODS += RecoParticleFlowPFIsoReader
RecoParticleFlowPFIsoReader_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowPFIsoReader,src/RecoParticleFlow/PFProducer/test,src_RecoParticleFlow_PFProducer_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoParticleFlowPFIsoReader_files_exts),$(RecoParticleFlowPFIsoReader_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,RecoParticleFlowPFIsoReader,src/RecoParticleFlow/PFProducer/test))
endif
ALL_COMMONRULES += src_RecoParticleFlow_PFProducer_test
src_RecoParticleFlow_PFProducer_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoParticleFlow_PFProducer_test,src/RecoParticleFlow/PFProducer/test,TEST))
ALL_COMMONRULES += src_DPGAnalysis_SiStripTools_test
src_DPGAnalysis_SiStripTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis_SiStripTools_test,src/DPGAnalysis/SiStripTools/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/RecoLuminosity/LumiDB)
subdirs_src_RecoLuminosity_LumiDB := src_RecoLuminosity_LumiDB_scripts src_RecoLuminosity_LumiDB_plotdata src_RecoLuminosity_LumiDB_test src_RecoLuminosity_LumiDB_python
ifeq ($(strip $(test-large-voronoi-area)),)
test-large-voronoi-area_files := $(patsubst src/RecoJets/JetProducers/test/%,%,$(foreach file,test-large-voronoi-area.cc,$(eval xfile:=$(wildcard src/RecoJets/JetProducers/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoJets/JetProducers/test/$(file). Please fix src/RecoJets/JetProducers/test/BuildFile.))))
test-large-voronoi-area := self/src/RecoJets/JetProducers/test
test-large-voronoi-area_TEST_RUNNER_CMD :=  test-large-voronoi-area 
test-large-voronoi-area_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoJets/JetProducers/test/BuildFile
test-large-voronoi-area_LOC_USE   := self RecoJets/JetProducers RecoJets/JetAlgorithms FWCore/Framework DataFormats/JetReco DataFormats/VertexReco Geometry/CaloGeometry Geometry/Records CommonTools/UtilAlgos fastjet
test-large-voronoi-area_PACKAGE := self/src/RecoJets/JetProducers/test
ALL_PRODS += test-large-voronoi-area
test-large-voronoi-area_INIT_FUNC        += $$(eval $$(call Binary,test-large-voronoi-area,src/RecoJets/JetProducers/test,src_RecoJets_JetProducers_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),$(sort $(patsubst .%,%,$(suffix $(test-large-voronoi-area_files)))),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,test-large-voronoi-area,src/RecoJets/JetProducers/test))
endif
ALL_COMMONRULES += src_RecoJets_JetProducers_test
src_RecoJets_JetProducers_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoJets_JetProducers_test,src/RecoJets/JetProducers/test,TEST))
ifeq ($(strip $(PyCommonToolsRecoUtils)),)
PyCommonToolsRecoUtils := self/src/CommonTools/RecoUtils/python
PyCommonToolsRecoUtils_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/CommonTools/RecoUtils/python)
ALL_PRODS += PyCommonToolsRecoUtils
PyCommonToolsRecoUtils_INIT_FUNC        += $$(eval $$(call PythonProduct,PyCommonToolsRecoUtils,src/CommonTools/RecoUtils/python,src_CommonTools_RecoUtils_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyCommonToolsRecoUtils,src/CommonTools/RecoUtils/python))
endif
ALL_COMMONRULES += src_CommonTools_RecoUtils_python
src_CommonTools_RecoUtils_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_RecoUtils_python,src/CommonTools/RecoUtils/python,PYTHON))
