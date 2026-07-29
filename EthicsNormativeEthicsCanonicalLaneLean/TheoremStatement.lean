import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsNormativeEthicsCanonicalLaneLean

structure EthicaAdmittedObject where
  object : Type
  normativePrinciple : Prop
  conclusion : normativePrinciple

def NormativeEthicsWitnessClosed (O : EthicaAdmittedObject) : Prop :=
  O.normativePrinciple

end EthicsNormativeEthicsCanonicalLaneLean
end HautevilleHouse
