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
