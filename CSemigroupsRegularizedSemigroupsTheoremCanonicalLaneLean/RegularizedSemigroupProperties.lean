import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

structure GenerationProperty (X : Type u) [NormedAddCommGroup X] [NormedSpace ℝ X] (A : X → X) where
  resolventSet : Prop
  generationBounds : Prop
  semigroupGenerated : CSemigroup X
  consistency : Prop

structure PerturbationProperty (X : Type u) [NormedAddCommGroup X] [NormedSpace ℝ X] (A : X → X) (B : X → X) where
  perturbedGenerator : Prop
  regularizedSemigroup : RegularizedSemigroup X (fun x => x)
  boundednessCondition : Prop
  closure : Prop

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
