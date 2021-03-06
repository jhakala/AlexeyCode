
// This file has been generated by genreflex with the --capabilities option
static  const char* clnames[] = {
//--Begin classes
  "LCGReflex/TinyEvent",
  "LCGReflex/APVCyclePhaseCollection",
  "LCGReflex/EventWithHistory",
  "LCGReflex/ClusterSummarySingleMultiplicity",
  "LCGReflex/std::vector<TinyEvent>",
  "LCGReflex/edm::Wrapper<APVCyclePhaseCollection>",
  "LCGReflex/edm::Wrapper<EventWithHistory>",
  "LCGReflex/edm::Wrapper<std::vector<TinyEvent> >",
  "LCGReflex/SingleMultiplicity<edmNew::DetSetVector<SiPixelCluster> >",
  "LCGReflex/SingleMultiplicity<edmNew::DetSetVector<SiStripCluster> >",
  "LCGReflex/SingleMultiplicity<edm::DetSetVector<SiStripDigi> >",
  "LCGReflex/MultiplicityPair<ClusterSummarySingleMultiplicity,ClusterSummarySingleMultiplicity>",
  "LCGReflex/MultiplicityPair<SingleMultiplicity<edmNew::DetSetVector<SiPixelCluster> >,SingleMultiplicity<edmNew::DetSetVector<SiStripCluster> > >",
//--End   classes
//--Final End
};

extern "C" void SEAL_CAPABILITIES (const char**& names, int& n )
{ 
  names = clnames;
  n = sizeof(clnames)/sizeof(char*);
}

