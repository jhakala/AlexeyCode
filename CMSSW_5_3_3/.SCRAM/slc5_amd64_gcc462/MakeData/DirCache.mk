ifeq ($(strip $(RecoMET/METFilters)),)
src_RecoMET_METFilters := self/RecoMET/METFilters
RecoMET/METFilters  := src_RecoMET_METFilters
src_RecoMET_METFilters_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoMET/METFilters/BuildFile
src_RecoMET_METFilters_EX_USE := DataFormats/WrappedStdDictionaries CalibCalorimetry/EcalTPGTools FWCore/Framework self DataFormats/DetId DataFormats/EgammaReco DataFormats/HcalRecHit Geometry/CaloGeometry DataFormats/EcalRecHit DataFormats/StdDictionaries root CondFormats/DataRecord DataFormats/ParticleFlowCandidate Geometry/CaloTopology DataFormats/PatCandidates DataFormats/EgammaCandidates CondFormats/EcalObjects FWCore/PluginManager DataFormats/ParticleFlowReco RecoJets/JetProducers DataFormats/EcalDetId Geometry/Records RecoMET/METAlgorithms DataFormats/HcalDetId CondFormats/HcalObjects CommonTools/UtilAlgos FWCore/ServiceRegistry RecoParticleFlow/PFProducer RecoJets/JetAlgorithms FWCore/ParameterSet
ALL_EXTERNAL_PRODS += src_RecoMET_METFilters
src_RecoMET_METFilters_INIT_FUNC += $$(eval $$(call EmptyPackage,src_RecoMET_METFilters,src/RecoMET/METFilters))
endif

ifeq ($(strip $(PhysicsTools/PatUtils)),)
ALL_COMMONRULES += src_PhysicsTools_PatUtils_src
src_PhysicsTools_PatUtils_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_src,src/PhysicsTools/PatUtils/src,LIBRARY))
PhysicsToolsPatUtils := self/PhysicsTools/PatUtils
PhysicsTools/PatUtils := PhysicsToolsPatUtils
PhysicsToolsPatUtils_files := $(patsubst src/PhysicsTools/PatUtils/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatUtils/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsPatUtils_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatUtils/BuildFile
PhysicsToolsPatUtils_LOC_USE   := self TrackingTools/Records CommonTools/Utils DataFormats/Math DataFormats/Candidate DataFormats/PatCandidates DataFormats/TrackReco DataFormats/MuonReco DataFormats/GsfTrackReco DataFormats/VertexReco TrackingTools/TransientTrack Utilities/General root
PhysicsToolsPatUtils_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatUtilsCapabilities,PhysicsToolsPatUtils,$(SCRAMSTORENAME_LIB)))
PhysicsToolsPatUtils_PRE_INIT_FUNC += $$(eval $$(call LCGDict,PhysicsToolsPatUtils,0,classes,$(LOCALTOP)/src/PhysicsTools/PatUtils/src/classes.h,$(LOCALTOP)/src/PhysicsTools/PatUtils/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
PhysicsToolsPatUtils_EX_LIB   := PhysicsToolsPatUtils
PhysicsToolsPatUtils_EX_USE   := $(PhysicsToolsPatUtils_LOC_USE)
PhysicsToolsPatUtils_PACKAGE := self/src/PhysicsTools/PatUtils/src
ALL_PRODS += PhysicsToolsPatUtils
PhysicsToolsPatUtils_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatUtils,src/PhysicsTools/PatUtils/src,src_PhysicsTools_PatUtils_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(PhysicsToolsPatUtils_files_exts),$(PhysicsToolsPatUtils_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(RecoJets/JetProducers)),)
ALL_COMMONRULES += src_RecoJets_JetProducers_src
src_RecoJets_JetProducers_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoJets_JetProducers_src,src/RecoJets/JetProducers/src,LIBRARY))
RecoJetsJetProducers := self/RecoJets/JetProducers
RecoJets/JetProducers := RecoJetsJetProducers
RecoJetsJetProducers_files := $(patsubst src/RecoJets/JetProducers/src/%,%,$(wildcard $(foreach dir,src/RecoJets/JetProducers/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoJetsJetProducers_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoJets/JetProducers/BuildFile
RecoJetsJetProducers_LOC_USE   := self boost FWCore/Framework DataFormats/JetReco Geometry/CaloGeometry Geometry/CaloTopology Geometry/Records Geometry/CommonDetUnit SimDataFormats/CaloHit RecoJets/JetAlgorithms DataFormats/CastorReco fastjet
RecoJetsJetProducers_EX_LIB   := RecoJetsJetProducers
RecoJetsJetProducers_EX_USE   := $(RecoJetsJetProducers_LOC_USE)
RecoJetsJetProducers_PACKAGE := self/src/RecoJets/JetProducers/src
ALL_PRODS += RecoJetsJetProducers
RecoJetsJetProducers_INIT_FUNC        += $$(eval $$(call Library,RecoJetsJetProducers,src/RecoJets/JetProducers/src,src_RecoJets_JetProducers_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoJetsJetProducers_files_exts),$(RecoJetsJetProducers_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(AnalysisCodeTLBSM/BHAnalyzerTLBSM)),)
ALL_COMMONRULES += src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_src
src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_src,src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/src,LIBRARY))
AnalysisCodeTLBSMBHAnalyzerTLBSM := self/AnalysisCodeTLBSM/BHAnalyzerTLBSM
AnalysisCodeTLBSM/BHAnalyzerTLBSM := AnalysisCodeTLBSMBHAnalyzerTLBSM
AnalysisCodeTLBSMBHAnalyzerTLBSM_files := $(patsubst src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/src/%,%,$(wildcard $(foreach dir,src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
AnalysisCodeTLBSMBHAnalyzerTLBSM_BuildFile    := $(WORKINGDIR)/cache/bf/src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/BuildFile
AnalysisCodeTLBSMBHAnalyzerTLBSM_LOC_USE   := self FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/MessageLogger FWCore/MessageService FWCore/Utilities DataFormats/Common DataFormats/PatCandidates PhysicsTools/PatAlgos PhysicsTools/PatUtils CommonTools/UtilAlgos root Geometry/CaloGeometry Geometry/CaloTopology RecoEcal/EgammaCoreTools EventFilter/HcalRawToDigi
AnalysisCodeTLBSMBHAnalyzerTLBSM_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,AnalysisCodeTLBSMBHAnalyzerTLBSM,AnalysisCodeTLBSMBHAnalyzerTLBSM,$(SCRAMSTORENAME_LIB)))
AnalysisCodeTLBSMBHAnalyzerTLBSM_PACKAGE := self/src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/src
ALL_PRODS += AnalysisCodeTLBSMBHAnalyzerTLBSM
AnalysisCodeTLBSMBHAnalyzerTLBSM_INIT_FUNC        += $$(eval $$(call Library,AnalysisCodeTLBSMBHAnalyzerTLBSM,src/AnalysisCodeTLBSM/BHAnalyzerTLBSM/src,src_AnalysisCodeTLBSM_BHAnalyzerTLBSM_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(AnalysisCodeTLBSMBHAnalyzerTLBSM_files_exts),$(AnalysisCodeTLBSMBHAnalyzerTLBSM_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(RecoParticleFlow/PFProducer)),)
ALL_COMMONRULES += src_RecoParticleFlow_PFProducer_src
src_RecoParticleFlow_PFProducer_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoParticleFlow_PFProducer_src,src/RecoParticleFlow/PFProducer/src,LIBRARY))
RecoParticleFlowPFProducer := self/RecoParticleFlow/PFProducer
RecoParticleFlow/PFProducer := RecoParticleFlowPFProducer
RecoParticleFlowPFProducer_files := $(patsubst src/RecoParticleFlow/PFProducer/src/%,%,$(wildcard $(foreach dir,src/RecoParticleFlow/PFProducer/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoParticleFlowPFProducer_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFProducer/BuildFile
RecoParticleFlowPFProducer_LOC_USE   := self CondFormats/DataRecord CondFormats/EgammaObjects DataFormats/CaloRecHit DataFormats/Common DataFormats/EgammaCandidates DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco DataFormats/Provenance DataFormats/TrackReco DataFormats/VertexReco DataFormats/MuonReco DataFormats/EcalDetId RecoParticleFlow/PFClusterTools RecoEcal/EgammaCoreTools boost clhep rootmath roottmva
RecoParticleFlowPFProducer_EX_LIB   := RecoParticleFlowPFProducer
RecoParticleFlowPFProducer_EX_USE   := $(RecoParticleFlowPFProducer_LOC_USE)
RecoParticleFlowPFProducer_PACKAGE := self/src/RecoParticleFlow/PFProducer/src
ALL_PRODS += RecoParticleFlowPFProducer
RecoParticleFlowPFProducer_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowPFProducer,src/RecoParticleFlow/PFProducer/src,src_RecoParticleFlow_PFProducer_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoParticleFlowPFProducer_files_exts),$(RecoParticleFlowPFProducer_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(RecoLocalTracker/SubCollectionProducers)),)
ALL_COMMONRULES += src_RecoLocalTracker_SubCollectionProducers_src
src_RecoLocalTracker_SubCollectionProducers_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoLocalTracker_SubCollectionProducers_src,src/RecoLocalTracker/SubCollectionProducers/src,LIBRARY))
RecoLocalTrackerSubCollectionProducers := self/RecoLocalTracker/SubCollectionProducers
RecoLocalTracker/SubCollectionProducers := RecoLocalTrackerSubCollectionProducers
RecoLocalTrackerSubCollectionProducers_files := $(patsubst src/RecoLocalTracker/SubCollectionProducers/src/%,%,$(wildcard $(foreach dir,src/RecoLocalTracker/SubCollectionProducers/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoLocalTrackerSubCollectionProducers_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoLocalTracker/SubCollectionProducers/BuildFile
RecoLocalTrackerSubCollectionProducers_LOC_USE   := self FWCore/Framework FWCore/ParameterSet DataFormats/TrackerRecHit2D Geometry/TrackerGeometryBuilder DataFormats/TrackerCommon DataFormats/Common DataFormats/SiStripDigi DataFormats/SiStripCluster DataFormats/TrackReco CalibTracker/Records Geometry/Records Geometry/CommonDetUnit MagneticField/Engine MagneticField/Records TrackingTools/GeomPropagators TrackingTools/TrajectoryState TrackingTools/Records SimDataFormats/TrackerDigiSimLink DataFormats/SiPixelCluster RecoLocalTracker/SiPixelRecHits RecoLocalTracker/SiStripRecHitConverter SimTracker/TrackerHitAssociation RecoLocalTracker/SiStripClusterizer
RecoLocalTrackerSubCollectionProducers_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoLocalTrackerSubCollectionProducers,RecoLocalTrackerSubCollectionProducers,$(SCRAMSTORENAME_LIB)))
RecoLocalTrackerSubCollectionProducers_PACKAGE := self/src/RecoLocalTracker/SubCollectionProducers/src
ALL_PRODS += RecoLocalTrackerSubCollectionProducers
RecoLocalTrackerSubCollectionProducers_INIT_FUNC        += $$(eval $$(call Library,RecoLocalTrackerSubCollectionProducers,src/RecoLocalTracker/SubCollectionProducers/src,src_RecoLocalTracker_SubCollectionProducers_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoLocalTrackerSubCollectionProducers_files_exts),$(RecoLocalTrackerSubCollectionProducers_files_exts),$(SRC_FILES_SUFFIXES))))
endif
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
ifeq ($(strip $(CommonTools/RecoAlgos)),)
ALL_COMMONRULES += src_CommonTools_RecoAlgos_src
src_CommonTools_RecoAlgos_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CommonTools_RecoAlgos_src,src/CommonTools/RecoAlgos/src,LIBRARY))
CommonToolsRecoAlgos := self/CommonTools/RecoAlgos
CommonTools/RecoAlgos := CommonToolsRecoAlgos
CommonToolsRecoAlgos_files := $(patsubst src/CommonTools/RecoAlgos/src/%,%,$(wildcard $(foreach dir,src/CommonTools/RecoAlgos/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CommonToolsRecoAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/RecoAlgos/BuildFile
CommonToolsRecoAlgos_LOC_USE   := self SimGeneral/HepPDTRecord DataFormats/RecoCandidate FWCore/Framework FWCore/ParameterSet DataFormats/TrackReco DataFormats/MuonReco DataFormats/TrackingRecHit DataFormats/SiStripCluster DataFormats/SiPixelCluster DataFormats/TrackerRecHit2D DataFormats/METReco
CommonToolsRecoAlgos_EX_LIB   := CommonToolsRecoAlgos
CommonToolsRecoAlgos_EX_USE   := $(CommonToolsRecoAlgos_LOC_USE)
CommonToolsRecoAlgos_PACKAGE := self/src/CommonTools/RecoAlgos/src
ALL_PRODS += CommonToolsRecoAlgos
CommonToolsRecoAlgos_INIT_FUNC        += $$(eval $$(call Library,CommonToolsRecoAlgos,src/CommonTools/RecoAlgos/src,src_CommonTools_RecoAlgos_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(CommonToolsRecoAlgos_files_exts),$(CommonToolsRecoAlgos_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(CommonTools/ParticleFlow)),)
ALL_COMMONRULES += src_CommonTools_ParticleFlow_src
src_CommonTools_ParticleFlow_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CommonTools_ParticleFlow_src,src/CommonTools/ParticleFlow/src,LIBRARY))
CommonToolsParticleFlow := self/CommonTools/ParticleFlow
CommonTools/ParticleFlow := CommonToolsParticleFlow
CommonToolsParticleFlow_files := $(patsubst src/CommonTools/ParticleFlow/src/%,%,$(wildcard $(foreach dir,src/CommonTools/ParticleFlow/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CommonToolsParticleFlow_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/ParticleFlow/BuildFile
CommonToolsParticleFlow_LOC_USE   := self DataFormats/Common DataFormats/ParticleFlowCandidate DataFormats/EgammaCandidates DataFormats/METReco DataFormats/JetReco DataFormats/PatCandidates rootmath FWCore/ParameterSet
CommonToolsParticleFlow_EX_LIB   := CommonToolsParticleFlow
CommonToolsParticleFlow_EX_USE   := $(CommonToolsParticleFlow_LOC_USE)
CommonToolsParticleFlow_PACKAGE := self/src/CommonTools/ParticleFlow/src
ALL_PRODS += CommonToolsParticleFlow
CommonToolsParticleFlow_INIT_FUNC        += $$(eval $$(call Library,CommonToolsParticleFlow,src/CommonTools/ParticleFlow/src,src_CommonTools_ParticleFlow_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(CommonToolsParticleFlow_files_exts),$(CommonToolsParticleFlow_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(DPGAnalysis/Skims)),)
ALL_COMMONRULES += src_DPGAnalysis_Skims_src
src_DPGAnalysis_Skims_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DPGAnalysis_Skims_src,src/DPGAnalysis/Skims/src,LIBRARY))
DPGAnalysisSkims := self/DPGAnalysis/Skims
DPGAnalysis/Skims := DPGAnalysisSkims
DPGAnalysisSkims_files := $(patsubst src/DPGAnalysis/Skims/src/%,%,$(wildcard $(foreach dir,src/DPGAnalysis/Skims/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DPGAnalysisSkims_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis/Skims/BuildFile
DPGAnalysisSkims_LOC_USE   := self FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/MessageLogger FWCore/Utilities Geometry/Records Geometry/CSCGeometry DataFormats/CSCDigi DataFormats/CSCRecHit DataFormats/Common DataFormats/MuonDetId CondFormats/CSCObjects DataFormats/DTDigi CondFormats/DTObjects DataFormats/RPCRecHit DataFormats/EcalDetId DataFormats/EcalRecHit DataFormats/L1GlobalTrigger DataFormats/Scalers Geometry/EcalMapping DataFormats/TrackReco DataFormats/MuonReco DataFormats/VertexReco DataFormats/METReco DataFormats/JetReco DataFormats/EgammaCandidates DataFormats/HcalIsolatedTrack Geometry/RPCGeometry DataFormats/L1Trigger DataFormats/TrackerRecHit2D root HLTrigger/HLTcore DataFormats/HcalRecHit RecoEcal/EgammaCoreTools DataFormats/EgammaReco PhysicsTools/SelectorUtils
DPGAnalysisSkims_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DPGAnalysisSkims,DPGAnalysisSkims,$(SCRAMSTORENAME_LIB)))
DPGAnalysisSkims_PACKAGE := self/src/DPGAnalysis/Skims/src
ALL_PRODS += DPGAnalysisSkims
DPGAnalysisSkims_INIT_FUNC        += $$(eval $$(call Library,DPGAnalysisSkims,src/DPGAnalysis/Skims/src,src_DPGAnalysis_Skims_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(DPGAnalysisSkims_files_exts),$(DPGAnalysisSkims_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(CommonTools/RecoUtils)),)
ALL_COMMONRULES += src_CommonTools_RecoUtils_src
src_CommonTools_RecoUtils_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CommonTools_RecoUtils_src,src/CommonTools/RecoUtils/src,LIBRARY))
CommonToolsRecoUtils := self/CommonTools/RecoUtils
CommonTools/RecoUtils := CommonToolsRecoUtils
CommonToolsRecoUtils_files := $(patsubst src/CommonTools/RecoUtils/src/%,%,$(wildcard $(foreach dir,src/CommonTools/RecoUtils/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CommonToolsRecoUtils_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/RecoUtils/BuildFile
CommonToolsRecoUtils_LOC_USE   := self DataFormats/Common DataFormats/EgammaCandidates DataFormats/L1GlobalTrigger DataFormats/RecoCandidate DataFormats/Scalers DataFormats/TrackReco DataFormats/VertexReco DataFormats/ParticleFlowReco L1Trigger/GlobalTriggerAnalyzer MagneticField/Records MagneticField/Engine HLTrigger/HLTcore RecoEgamma/EgammaTools RecoVertex/KinematicFit RecoVertex/KinematicFitPrimitives rootrflx TrackingTools/TransientTrack TrackingTools/IPTools TrackingTools/Records FWCore/Framework
CommonToolsRecoUtils_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CommonToolsRecoUtilsCapabilities,CommonToolsRecoUtils,$(SCRAMSTORENAME_LIB)))
CommonToolsRecoUtils_PRE_INIT_FUNC += $$(eval $$(call LCGDict,CommonToolsRecoUtils,0,classes,$(LOCALTOP)/src/CommonTools/RecoUtils/src/classes.h,$(LOCALTOP)/src/CommonTools/RecoUtils/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
CommonToolsRecoUtils_EX_LIB   := CommonToolsRecoUtils
CommonToolsRecoUtils_EX_USE   := $(CommonToolsRecoUtils_LOC_USE)
CommonToolsRecoUtils_PACKAGE := self/src/CommonTools/RecoUtils/src
ALL_PRODS += CommonToolsRecoUtils
CommonToolsRecoUtils_INIT_FUNC        += $$(eval $$(call Library,CommonToolsRecoUtils,src/CommonTools/RecoUtils/src,src_CommonTools_RecoUtils_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(CommonToolsRecoUtils_files_exts),$(CommonToolsRecoUtils_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(RecoMET/METAnalyzers)),)
ALL_COMMONRULES += src_RecoMET_METAnalyzers_src
src_RecoMET_METAnalyzers_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoMET_METAnalyzers_src,src/RecoMET/METAnalyzers/src,LIBRARY))
RecoMETMETAnalyzers := self/RecoMET/METAnalyzers
RecoMET/METAnalyzers := RecoMETMETAnalyzers
RecoMETMETAnalyzers_files := $(patsubst src/RecoMET/METAnalyzers/src/%,%,$(wildcard $(foreach dir,src/RecoMET/METAnalyzers/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoMETMETAnalyzers_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoMET/METAnalyzers/BuildFile
RecoMETMETAnalyzers_LOC_USE   := self DataFormats/METReco DataFormats/L1GlobalTrigger DataFormats/L1GlobalMuonTrigger TrackingTools/TrackAssociator FWCore/Framework root
RecoMETMETAnalyzers_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoMETMETAnalyzers,RecoMETMETAnalyzers,$(SCRAMSTORENAME_LIB)))
RecoMETMETAnalyzers_PACKAGE := self/src/RecoMET/METAnalyzers/src
ALL_PRODS += RecoMETMETAnalyzers
RecoMETMETAnalyzers_INIT_FUNC        += $$(eval $$(call Library,RecoMETMETAnalyzers,src/RecoMET/METAnalyzers/src,src_RecoMET_METAnalyzers_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoMETMETAnalyzers_files_exts),$(RecoMETMETAnalyzers_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(RecoJets/JetAlgorithms)),)
ALL_COMMONRULES += src_RecoJets_JetAlgorithms_src
src_RecoJets_JetAlgorithms_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoJets_JetAlgorithms_src,src/RecoJets/JetAlgorithms/src,LIBRARY))
RecoJetsJetAlgorithms := self/RecoJets/JetAlgorithms
RecoJets/JetAlgorithms := RecoJetsJetAlgorithms
RecoJetsJetAlgorithms_files := $(patsubst src/RecoJets/JetAlgorithms/src/%,%,$(wildcard $(foreach dir,src/RecoJets/JetAlgorithms/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoJetsJetAlgorithms_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoJets/JetAlgorithms/BuildFile
RecoJetsJetAlgorithms_LOC_USE   := self fastjet ktjet DataFormats/JetReco DataFormats/Candidate FWCore/Framework SimDataFormats/Vertex SimDataFormats/Track DataFormats/HepMCCandidate
RecoJetsJetAlgorithms_EX_LIB   := RecoJetsJetAlgorithms
RecoJetsJetAlgorithms_EX_USE   := $(RecoJetsJetAlgorithms_LOC_USE)
RecoJetsJetAlgorithms_PACKAGE := self/src/RecoJets/JetAlgorithms/src
ALL_PRODS += RecoJetsJetAlgorithms
RecoJetsJetAlgorithms_INIT_FUNC        += $$(eval $$(call Library,RecoJetsJetAlgorithms,src/RecoJets/JetAlgorithms/src,src_RecoJets_JetAlgorithms_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoJetsJetAlgorithms_files_exts),$(RecoJetsJetAlgorithms_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(EGamma/EGammaAnalysisTools)),)
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_src
src_EGamma_EGammaAnalysisTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_src,src/EGamma/EGammaAnalysisTools/src,LIBRARY))
EGammaEGammaAnalysisTools := self/EGamma/EGammaAnalysisTools
EGamma/EGammaAnalysisTools := EGammaEGammaAnalysisTools
EGammaEGammaAnalysisTools_files := $(patsubst src/EGamma/EGammaAnalysisTools/src/%,%,$(wildcard $(foreach dir,src/EGamma/EGammaAnalysisTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
EGammaEGammaAnalysisTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/EGamma/EGammaAnalysisTools/BuildFile
EGammaEGammaAnalysisTools_LOC_USE   := self CondCore/DBOutputService CondFormats/EgammaObjects CondFormats/PhysicsToolsObjects DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry PhysicsTools/UtilAlgos RecoEcal/EgammaCoreTools TrackingTools/IPTools RecoEgamma/EgammaTools clhep root roottmva
EGammaEGammaAnalysisTools_EX_LIB   := EGammaEGammaAnalysisTools
EGammaEGammaAnalysisTools_EX_USE   := $(EGammaEGammaAnalysisTools_LOC_USE)
EGammaEGammaAnalysisTools_PACKAGE := self/src/EGamma/EGammaAnalysisTools/src
ALL_PRODS += EGammaEGammaAnalysisTools
EGammaEGammaAnalysisTools_INIT_FUNC        += $$(eval $$(call Library,EGammaEGammaAnalysisTools,src/EGamma/EGammaAnalysisTools/src,src_EGamma_EGammaAnalysisTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(EGammaEGammaAnalysisTools_files_exts),$(EGammaEGammaAnalysisTools_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(PhysicsTools/PatAlgos)),)
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_src
src_PhysicsTools_PatAlgos_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_src,src/PhysicsTools/PatAlgos/src,LIBRARY))
PhysicsToolsPatAlgos := self/PhysicsTools/PatAlgos
PhysicsTools/PatAlgos := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatAlgos/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsPatAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/BuildFile
PhysicsToolsPatAlgos_LOC_USE   := self DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/JetReco DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/PatCandidates DataFormats/TauReco DataFormats/TrackReco DataFormats/VertexReco FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities PhysicsTools/PatUtils PhysicsTools/Utilities PhysicsTools/IsolationAlgos clhep
PhysicsToolsPatAlgos_EX_LIB   := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_EX_USE   := $(PhysicsToolsPatAlgos_LOC_USE)
PhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/src
ALL_PRODS += PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/src,src_PhysicsTools_PatAlgos_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(PhysicsToolsPatAlgos_files_exts),$(PhysicsToolsPatAlgos_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(JetMETCorrections/Type1MET)),)
ALL_COMMONRULES += src_JetMETCorrections_Type1MET_src
src_JetMETCorrections_Type1MET_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_JetMETCorrections_Type1MET_src,src/JetMETCorrections/Type1MET/src,LIBRARY))
JetMETCorrectionsType1MET := self/JetMETCorrections/Type1MET
JetMETCorrections/Type1MET := JetMETCorrectionsType1MET
JetMETCorrectionsType1MET_files := $(patsubst src/JetMETCorrections/Type1MET/src/%,%,$(wildcard $(foreach dir,src/JetMETCorrections/Type1MET/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
JetMETCorrectionsType1MET_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETCorrections/Type1MET/BuildFile
JetMETCorrectionsType1MET_LOC_USE   := self FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CondFormats/EgammaObjects DataFormats/Candidate DataFormats/JetReco DataFormats/ParticleFlowCandidate DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/TauReco DataFormats/VertexReco JetMETCorrections/Objects root
JetMETCorrectionsType1MET_EX_LIB   := JetMETCorrectionsType1MET
JetMETCorrectionsType1MET_EX_USE   := $(JetMETCorrectionsType1MET_LOC_USE)
JetMETCorrectionsType1MET_PACKAGE := self/src/JetMETCorrections/Type1MET/src
ALL_PRODS += JetMETCorrectionsType1MET
JetMETCorrectionsType1MET_INIT_FUNC        += $$(eval $$(call Library,JetMETCorrectionsType1MET,src/JetMETCorrections/Type1MET/src,src_JetMETCorrections_Type1MET_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(JetMETCorrectionsType1MET_files_exts),$(JetMETCorrectionsType1MET_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(DPGAnalysis/SiStripTools)),)
ALL_COMMONRULES += src_DPGAnalysis_SiStripTools_src
src_DPGAnalysis_SiStripTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DPGAnalysis_SiStripTools_src,src/DPGAnalysis/SiStripTools/src,LIBRARY))
DPGAnalysisSiStripTools := self/DPGAnalysis/SiStripTools
DPGAnalysis/SiStripTools := DPGAnalysisSiStripTools
DPGAnalysisSiStripTools_files := $(patsubst src/DPGAnalysis/SiStripTools/src/%,%,$(wildcard $(foreach dir,src/DPGAnalysis/SiStripTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DPGAnalysisSiStripTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/DPGAnalysis/SiStripTools/BuildFile
DPGAnalysisSiStripTools_LOC_USE   := self root rootrflx FWCore/MessageLogger FWCore/Utilities FWCore/ServiceRegistry FWCore/Framework FWCore/ParameterSet CommonTools/UtilAlgos DataFormats/Luminosity DataFormats/Provenance DataFormats/SiStripDigi DataFormats/SiStripCluster DataFormats/SiPixelCluster DataFormats/Scalers DataFormats/Common DataFormats/DetId DataFormats/SiStripDetId DataFormats/TrackReco DataFormats/TrackerCommon CondFormats/DataRecord CondFormats/SiStripObjects CalibFormats/SiStripObjects CalibTracker/Records SimDataFormats/PileupSummaryInfo
DPGAnalysisSiStripTools_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DPGAnalysisSiStripToolsCapabilities,DPGAnalysisSiStripTools,$(SCRAMSTORENAME_LIB)))
DPGAnalysisSiStripTools_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DPGAnalysisSiStripTools,0,classes,$(LOCALTOP)/src/DPGAnalysis/SiStripTools/src/classes.h,$(LOCALTOP)/src/DPGAnalysis/SiStripTools/src/classes_def.xml,$(SCRAMSTORENAME_LIB), --fail_on_warnings,Capabilities))
DPGAnalysisSiStripTools_EX_LIB   := DPGAnalysisSiStripTools
DPGAnalysisSiStripTools_EX_USE   := $(DPGAnalysisSiStripTools_LOC_USE)
DPGAnalysisSiStripTools_PACKAGE := self/src/DPGAnalysis/SiStripTools/src
ALL_PRODS += DPGAnalysisSiStripTools
DPGAnalysisSiStripTools_INIT_FUNC        += $$(eval $$(call Library,DPGAnalysisSiStripTools,src/DPGAnalysis/SiStripTools/src,src_DPGAnalysis_SiStripTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(DPGAnalysisSiStripTools_files_exts),$(DPGAnalysisSiStripTools_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(TopQuarkAnalysis/TopPairBSM)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopPairBSM_src
src_TopQuarkAnalysis_TopPairBSM_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopPairBSM_src,src/TopQuarkAnalysis/TopPairBSM/src,LIBRARY))
TopQuarkAnalysisTopPairBSM := self/TopQuarkAnalysis/TopPairBSM
TopQuarkAnalysis/TopPairBSM := TopQuarkAnalysisTopPairBSM
TopQuarkAnalysisTopPairBSM_files := $(patsubst src/TopQuarkAnalysis/TopPairBSM/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopPairBSM/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopPairBSM_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopPairBSM/BuildFile
TopQuarkAnalysisTopPairBSM_LOC_USE   := self fastjet ktjet DataFormats/JetReco DataFormats/Candidate DataFormats/Common DataFormats/PatCandidates FWCore/Framework FWCore/ParameterSet AnalysisDataFormats/TopObjects TopQuarkAnalysis/TopTools PhysicsTools/HepMCCandAlgos rootcore root
TopQuarkAnalysisTopPairBSM_EX_LIB   := TopQuarkAnalysisTopPairBSM
TopQuarkAnalysisTopPairBSM_EX_USE   := $(TopQuarkAnalysisTopPairBSM_LOC_USE)
TopQuarkAnalysisTopPairBSM_PACKAGE := self/src/TopQuarkAnalysis/TopPairBSM/src
ALL_PRODS += TopQuarkAnalysisTopPairBSM
TopQuarkAnalysisTopPairBSM_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopPairBSM,src/TopQuarkAnalysis/TopPairBSM/src,src_TopQuarkAnalysis_TopPairBSM_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(TopQuarkAnalysisTopPairBSM_files_exts),$(TopQuarkAnalysisTopPairBSM_files_exts),$(SRC_FILES_SUFFIXES))))
endif
