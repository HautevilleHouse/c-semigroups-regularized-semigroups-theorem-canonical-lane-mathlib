import CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean.RegularizedSemigroupProperties

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

structure GenerationTheoremPackage (X : Type u) [NormedAddCommGroup X] [NormedSpace ℝ X] (A : X → X) where
  generatorClosure : Prop
  resolventCondition : Prop
  semigroupConstruction : CSemigroup X
  generationEvidence : GenerationProperty X A

def GenerationTheoremClosed {X} [NormedAddCommGroup X] [NormedSpace ℝ X] {A : X → X} (P : GenerationTheoremPackage X A) : Prop :=
  P.generatorClosure ∧ P.resolventCondition ∧ P.generationEvidence.consistency

theorem generation_theorem_closed_from_evidence {X} [NormedAddCommGroup X] [NormedSpace ℝ X] {A : X → X} (P : GenerationTheoremPackage X A) (E : GenerationProperty X A) : GenerationTheoremClosed P :=
  And.intro P.generatorClosure (And.intro P.resolventCondition E.consistency)

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
