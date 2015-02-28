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
