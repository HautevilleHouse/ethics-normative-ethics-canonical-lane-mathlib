import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsNormativeEthicsCanonicalLaneLean

structure AdmissibleClass where
  object : EthicaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NormativeEthicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EthicsNormativeEthicsCanonicalLaneLean
end HautevilleHouse
