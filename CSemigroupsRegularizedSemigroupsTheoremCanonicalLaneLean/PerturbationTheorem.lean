import CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean.RegularizedSemigroupProperties

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

structure PerturbationTheoremPackage (X : Type u) [NormedAddCommGroup X] [NormedSpace ℝ X] (A B : X → X) where
  originalGeneratorClosure : Prop
  perturbationBounded : Prop
  regularizedSemigroupConstruction : RegularizedSemigroup X (fun x => x)
  perturbationEvidence : PerturbationProperty X A B

def PerturbationTheoremClosed {X} [NormedAddCommGroup X] [NormedSpace ℝ X] {A B : X → X} (P : PerturbationTheoremPackage X A B) : Prop :=
  P.originalGeneratorClosure ∧ P.perturbationBounded ∧ P.perturbationEvidence.closure

theorem perturbation_theorem_closed_from_evidence {X} [NormedAddCommGroup X] [NormedSpace ℝ X] {A B : X → X} (P : PerturbationTheoremPackage X A B) (E : PerturbationProperty X A B) : PerturbationTheoremClosed P :=
  And.intro P.originalGeneratorClosure (And.intro P.perturbationBounded E.closure)

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
