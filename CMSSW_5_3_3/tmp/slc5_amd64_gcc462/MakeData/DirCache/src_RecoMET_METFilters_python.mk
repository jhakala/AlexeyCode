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
