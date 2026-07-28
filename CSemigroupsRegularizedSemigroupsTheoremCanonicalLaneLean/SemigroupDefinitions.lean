import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

structure BanachSpace where
  carrier : Type u
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  complete : CompleteSpace carrier

structure C0Semigroup (X : BanachSpace) where
  family : ℝ → (X.carrier → X.carrier)
  semigroupProperty : ∀ t s ≥ 0, family (t + s) = (family t) ∘ (family s)
  identityProperty : family 0 = id
  strongContinuity : ∀ x : X.carrier, ContinuousAt (λ t : ℝ => family t x) 0

structure C0SemigroupEvidence {X : BanachSpace} (S : C0Semigroup X) where
  semigroupPropertyClosed : S.semigroupProperty
  identityPropertyClosed : S.identityProperty
  strongContinuityClosed : S.strongContinuity

def C0SemigroupClosed {X : BanachSpace} (S : C0Semigroup X) : Prop :=
  S.semigroupProperty ∧ S.identityProperty ∧ S.strongContinuity

theorem c0_semigroup_closed_from_evidence {X : BanachSpace} (S : C0Semigroup X) (E : C0SemigroupEvidence S) : C0SemigroupClosed S := by
  exact And.intro E.semigroupPropertyClosed (And.intro E.identityPropertyClosed E.strongContinuityClosed)

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse