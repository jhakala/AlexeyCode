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
