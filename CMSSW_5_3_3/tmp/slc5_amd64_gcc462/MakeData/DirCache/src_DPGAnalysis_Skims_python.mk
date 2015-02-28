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
