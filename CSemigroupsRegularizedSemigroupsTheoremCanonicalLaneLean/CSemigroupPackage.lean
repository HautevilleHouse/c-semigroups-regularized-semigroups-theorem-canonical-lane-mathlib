import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

structure CSemigroupPackage where
  space : Type u
  norm : space → ℝ
  cOperator : space → space
  semigroup : ℝ → space → space
  stronglyContinuous : Prop
  cBounded : Prop
  cCommutes : ∀ t x, cOperator (semigroup t x) = semigroup t (cOperator x)
  growthCondition : Prop

structure CSemigroupEvidence (P : CSemigroupPackage) where
  stronglyContinuousClosed : P.stronglyContinuous
  cBoundedClosed : P.cBounded
  cCommutesClosed : P.cCommutes
  growthConditionClosed : P.growthCondition

def CSemigroupClosed (P : CSemigroupPackage) : Prop :=
  P.stronglyContinuous ∧ P.cBounded ∧ P.cCommutes ∧ P.growthCondition

theorem csemigroup_closed_from_evidence (P : CSemigroupPackage) (E : CSemigroupEvidence P) :
    CSemigroupClosed P := by
  exact And.intro E.stronglyContinuousClosed (And.intro E.cBoundedClosed (And.intro E.cCommutesClosed E.growthConditionClosed))

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse