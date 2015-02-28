ifeq ($(strip $(RecoMET/METFilters)),)
src_RecoMET_METFilters := self/RecoMET/METFilters
RecoMET/METFilters  := src_RecoMET_METFilters
src_RecoMET_METFilters_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoMET/METFilters/BuildFile
src_RecoMET_METFilters_EX_USE := DataFormats/WrappedStdDictionaries CalibCalorimetry/EcalTPGTools FWCore/Framework self DataFormats/DetId DataFormats/EgammaReco DataFormats/HcalRecHit Geometry/CaloGeometry DataFormats/EcalRecHit DataFormats/StdDictionaries root CondFormats/DataRecord DataFormats/ParticleFlowCandidate Geometry/CaloTopology DataFormats/PatCandidates DataFormats/EgammaCandidates CondFormats/EcalObjects FWCore/PluginManager DataFormats/ParticleFlowReco RecoJets/JetProducers DataFormats/EcalDetId Geometry/Records RecoMET/METAlgorithms DataFormats/HcalDetId CondFormats/HcalObjects CommonTools/UtilAlgos FWCore/ServiceRegistry RecoParticleFlow/PFProducer RecoJets/JetAlgorithms FWCore/ParameterSet
ALL_EXTERNAL_PRODS += src_RecoMET_METFilters
src_RecoMET_METFilters_INIT_FUNC += $$(eval $$(call EmptyPackage,src_RecoMET_METFilters,src/RecoMET/METFilters))
endif

