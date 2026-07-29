import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsNormativeEthicsCanonicalLaneLean

-- Virtue ethics: focus on character traits

structure Virtue where
  name : String
  definition : Prop
  cultivation : Prop

structure Vice where
  name : String
  definition : Prop
  avoidance : Prop

structure VirtueEthicsPackage where
  virtues : List Virtue
  vices : List Vice
  virtueFlourishing : Prop
  viceAvoidance : Prop
  flourishingFromVirtues : virtueFlourishing
  avoidanceFromVices : viceAvoidance

def VirtueEthicsClosed (V : VirtueEthicsPackage) : Prop :=
  V.virtueFlourishing ∧ V.viceAvoidance

theorem virtue_ethics_closed_from_evidence (V : VirtueEthicsPackage) : VirtueEthicsClosed V :=
  And.intro V.flourishingFromVirtues V.avoidanceFromVices

end EthicsNormativeEthicsCanonicalLaneLean
end HautevilleHouse