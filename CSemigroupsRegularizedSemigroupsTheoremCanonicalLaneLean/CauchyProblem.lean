import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean.SemigroupDefinitions
import HautevilleHouse.CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean.RegularizedSemigroup

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

structure CauchyProblem {X : BanachSpace} (A : C0Semigroup X) where
  initialData : X.carrier
  solution : ℝ → X.carrier
  solvesEquation : ∀ t > 0, deriv (λ s : ℝ => solution s) t = A.family t (solution t)
  initialCondition : solution 0 = initialData

structure CauchyProblemEvidence {X : BanachSpace} {A : C0Semigroup X} (C : CauchyProblem A) where
  solvesEquationClosed : C.solvesEquation
  initialConditionClosed : C.initialCondition

def CauchyProblemClosed {X : BanachSpace} {A : C0Semigroup X} (C : CauchyProblem A) : Prop :=
  C.solvesEquation ∧ C.initialCondition

theorem cauchy_problem_closed_from_evidence {X : BanachSpace} {A : C0Semigroup X} (C : CauchyProblem A) (E : CauchyProblemEvidence C) : CauchyProblemClosed C := by
  exact And.intro E.solvesEquationClosed E.initialConditionClosed

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse