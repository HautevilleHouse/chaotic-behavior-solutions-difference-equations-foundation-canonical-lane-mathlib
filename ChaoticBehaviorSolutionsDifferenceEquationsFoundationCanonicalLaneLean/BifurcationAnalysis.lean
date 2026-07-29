import ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean.DifferenceEquation

/-!
# Bifurcation Analysis Package
-/

namespace HautevilleHouse
namespace ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean

structure BifurcationAnalysisPackage {G : RiemannianCurvaturePackage}
    {L : LyapunovExponentsPackage G} {D : DifferenceEquationPackage L} where
  bifurcationDiagram : Prop
  periodDoublingCascade : Prop
  intermittency : Prop
  crisisPhenomenon : Prop
  universalityClass : Prop

structure BifurcationAnalysisEvidence {G : RiemannianCurvaturePackage}
    {L : LyapunovExponentsPackage G} {D : DifferenceEquationPackage L}
    (B : BifurcationAnalysisPackage D) where
  bifurcationDiagramClosed : B.bifurcationDiagram
  periodDoublingCascadeClosed : B.periodDoublingCascade
  intermittencyClosed : B.intermittency
  crisisPhenomenonClosed : B.crisisPhenomenon
  universalityClassClosed : B.universalityClass

def BifurcationAnalysisClosed {G : RiemannianCurvaturePackage}
    {L : LyapunovExponentsPackage G} {D : DifferenceEquationPackage L}
    (B : BifurcationAnalysisPackage D) : Prop :=
  B.bifurcationDiagram ∧ B.periodDoublingCascade ∧ B.intermittency ∧
  B.crisisPhenomenon ∧ B.universalityClass

theorem bifurcation_analysis_closed_from_evidence
    {G : RiemannianCurvaturePackage} {L : LyapunovExponentsPackage G}
    {D : DifferenceEquationPackage L} (B : BifurcationAnalysisPackage D)
    (E : BifurcationAnalysisEvidence B) : BifurcationAnalysisClosed B := by
  exact And.intro E.bifurcationDiagramClosed
    (And.intro E.periodDoublingCascadeClosed
      (And.intro E.intermittencyClosed
        (And.intro E.crisisPhenomenonClosed E.universalityClassClosed)))

end ChaoticBehaviorSolutionsDifferenceEquationsFoundationCanonicalLaneLean
end HautevilleHouse