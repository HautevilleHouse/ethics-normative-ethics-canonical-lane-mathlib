import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsNormativeEthicsCanonicalLaneLean

-- Deontological constraints: duties and rights that constrain actions

structure Duty where
  agent : MoralAgent
  description : Prop
  binding : Prop

structure Right where
  holder : MoralAgent
  claim : Prop
  respected : Prop

structure DeontologicalPackage where
  duties : List Duty
  rights : List Right
  allDutiesBinding : ∀ d ∈ duties, d.binding
  allRightsRespected : ∀ r ∈ rights, r.respected

def DeontologicalClosed (D : DeontologicalPackage) : Prop :=
  D.allDutiesBinding ∧ D.allRightsRespected

theorem deontological_closed_from_evidence (D : DeontologicalPackage) : DeontologicalClosed D :=
  And.intro D.allDutiesBinding D.allRightsRespected

end EthicsNormativeEthicsCanonicalLaneLean
end HautevilleHouse