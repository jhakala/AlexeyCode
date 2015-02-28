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
