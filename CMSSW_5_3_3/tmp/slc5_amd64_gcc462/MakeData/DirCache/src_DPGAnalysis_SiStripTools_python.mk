ifeq ($(strip $(PyDPGAnalysisSiStripTools)),)
PyDPGAnalysisSiStripTools := self/src/DPGAnalysis/SiStripTools/python
PyDPGAnalysisSiStripTools_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/DPGAnalysis/SiStripTools/python)
ALL_PRODS += PyDPGAnalysisSiStripTools
PyDPGAnalysisSiStripTools_INIT_FUNC        += $$(eval $$(call PythonProduct,PyDPGAnalysisSiStripTools,src/DPGAnalysis/SiStripTools/python,src_DPGAnalysis_SiStripTools_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyDPGAnalysisSiStripTools,src/DPGAnalysis/SiStripTools/python))
endif
ALL_COMMONRULES += src_DPGAnalysis_SiStripTools_python
src_DPGAnalysis_SiStripTools_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DPGAnalysis_SiStripTools_python,src/DPGAnalysis/SiStripTools/python,PYTHON))
