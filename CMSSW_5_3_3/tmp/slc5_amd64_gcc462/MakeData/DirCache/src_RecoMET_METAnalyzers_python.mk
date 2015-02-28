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
