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
