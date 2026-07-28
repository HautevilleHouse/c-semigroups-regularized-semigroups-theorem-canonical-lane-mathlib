import CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "c-semigroups-regularized-semigroups-canonical-lane",
  theoremName := "C Semigroups Regularized Semigroups Theorem",
  theoremObject := "CSemigroupsRegularizedSemigroupsAdmittedObject",
  classicalBoundary := "classical boundary carried by formalization certificate",
  constrainedStatement := "constrained theorem certificate internalized through admissible class closure",
  certificateLane := "constrained",
  carriedRemainder := "unrestricted classical closure remains carried"
}

theorem theorem_statement_check :
    sourceTheoremStatement.sourceKey = "c-semigroups-regularized-semigroups-canonical-lane" := by
  rfl

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse