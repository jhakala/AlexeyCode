import FWCore.ParameterSet.Config as cms

PATElectronProducer = cms.EDProducer('PATElectronProducer',
  pfCandidateMap = cms.InputTag('no default'),
  electronSource = cms.InputTag('no default'),
  embedGsfElectronCore = cms.bool(True),
  embedGsfTrack = cms.bool(True),
  embedSuperCluster = cms.bool(True),
  embedTrack = cms.bool(False),
  pfElectronSource = cms.InputTag('pfElectrons'),
  useParticleFlow = cms.bool(False),
  embedPFCandidate = cms.bool(False),
  addGenMatch = cms.bool(True),
  embedGenMatch = cms.bool(False),
  genParticleMatch = cms.InputTag(''),
  addElectronID = cms.bool(True),
  electronIDSource = cms.InputTag(''),
  isoDeposits = cms.PSet(),
  isolationValues = cms.PSet(),
  isolationValuesNoPFId = cms.PSet(),
  efficiencies = cms.PSet(),
  addEfficiencies = cms.bool(False),
  userData = cms.PSet(
    userClasses = cms.PSet(),
    userFloats = cms.PSet(),
    userInts = cms.PSet(),
    userCands = cms.PSet(),
    userFunctions = cms.vstring(),
    userFunctionLabels = cms.vstring()
  ),
  addElectronShapes = cms.bool(True),
  reducedBarrelRecHitCollection = cms.InputTag('reducedEcalRecHitsEB'),
  reducedEndcapRecHitCollection = cms.InputTag('reducedEcalRecHitsEE'),
  userIsolation = cms.PSet(),
  addResolutions = cms.bool(False),
  resolutions = cms.PSet(),
  embedHighLevelSelection = cms.bool(True),
  beamLineSrc = cms.InputTag(''),
  pvSrc = cms.InputTag(''),
  usePV = cms.bool(False)
)
