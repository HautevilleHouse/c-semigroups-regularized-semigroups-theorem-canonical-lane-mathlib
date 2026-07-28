import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean

structure CSemigroupSpace where
  carrier : Type
  op : carrier → carrier → carrier
  semigroupLaw : ∀ a b c : carrier, op (op a b) c = op a (op b c)

structure CSemigroupAdmittedObject where
  space : CSemigroupSpace
  isC : Prop
  regularized : Prop
  regularizedGenerate : Prop
  conclusion : regularizedGenerate

def CSemigroupWitnessClosed (O : CSemigroupAdmittedObject) : Prop :=
  O.regularizedGenerate

end CSemigroupsRegularizedSemigroupsTheoremCanonicalLaneLean
end HautevilleHouse