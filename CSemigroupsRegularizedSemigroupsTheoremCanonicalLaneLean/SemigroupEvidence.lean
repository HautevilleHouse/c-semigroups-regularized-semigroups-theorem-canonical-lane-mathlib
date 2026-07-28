import CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean.RegularizedSemigroupPackage

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

structure GenerationEvidence {C0 : C0SemigroupPackage} {R : RegularizedSemigroupPackage C0} where
  hilleYosidaCondition : Prop
  resolventEstimate : Prop
  denseness : Prop
  generationClosed : Prop

structure PerturbationEvidence {C0 : C0SemigroupPackage} {R : RegularizedSemigroupPackage C0} where
  boundedPerturbation : Prop
  MiyaderaVoigtCondition : Prop
  perturbationClosed : Prop

structure SpectralMappingEvidence {C0 : C0SemigroupPackage} {R : RegularizedSemigroupPackage C0} where
  spectralInclusion : Prop
  spectralMappingTheorem : Prop
  spectralClosed : Prop

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse