import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsNormativeEthicsCanonicalLaneLean

structure VirtueEthicsPackage where
  virtueList : Type u
  eudaimonia : Prop
  goldenMean : Prop
  phronesis : Prop
  moralExemplar : Prop

structure VirtueEthicsEvidence (V : VirtueEthicsPackage) where
  eudaimoniaClosed : V.eudaimonia
  goldenMeanClosed : V.goldenMean
  phronesisClosed : V.phronesis
  moralExemplarClosed : V.moralExemplar

def VirtueEthicsClosed (V : VirtueEthicsPackage) : Prop :=
  V.eudaimonia ∧ V.goldenMean ∧ V.phronesis ∧ V.moralExemplar

theorem virtue_ethics_closed_from_evidence (V : VirtueEthicsPackage) (E : VirtueEthicsEvidence V) : VirtueEthicsClosed V := by
  exact And.intro E.eudaimoniaClosed (And.intro E.goldenMeanClosed (And.intro E.phronesisClosed E.moralExemplarClosed))

end HautevilleHouse
end EthicsNormativeEthicsCanonicalLaneLean