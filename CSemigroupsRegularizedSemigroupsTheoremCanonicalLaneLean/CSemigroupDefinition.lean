import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

structure CSemigroup (X : Type u) [NormedAddCommGroup X] [NormedSpace ℝ X] where
  family : ℝ → (X → X)
  semigroupProperty : ∀ t s ≥ 0, family (t + s) = family t ∘ family s
  strongContinuity : ∀ x : X, Continuous (fun t : ℝ ≥ 0 => family t x)
  regularizing : ∃ (n : ℕ), ∀ x : X, DifferentiableContinuum (fun t : ℝ ≥ 0 => family t x)

structure RegularizedSemigroup (X : Type u) [NormedAddCommGroup X] [NormedSpace ℝ X] (C : X → X) where
  family : ℝ → (X → X)
  semigroupProperty : ∀ t s ≥ 0, family (t + s) = family t ∘ family s
  strongContinuity : ∀ x : X, Continuous (fun t : ℝ ≥ 0 => family t x)
  regularizing : ∃ (n : ℕ), ∀ x : X, DifferentiableContinuum (fun t : ℝ ≥ 0 => family t x)
  commutationWithC : ∀ t ≥ 0, family t ∘ C = C ∘ family t

def CSemigroupRegularizedSemigroupAdmissible (X : Type u) [NormedAddCommGroup X] [NormedSpace ℝ X] : Prop :=
  True

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse
