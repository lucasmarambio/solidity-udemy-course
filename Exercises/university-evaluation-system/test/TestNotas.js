const Notas = artifacts.require('Notas');
const Utils = require("./helper/utils");
 
contract('Test new Notas', (accounts) => {
  let [teacher, randomStudent] = accounts;
  let notasInstance;
  beforeEach(async () => {
    notasInstance = await Notas.new();
  });

  it('should succeed to evaluate student', async () => {
    await notasInstance.Evaluate("Test", 2, { from: teacher });
    const storedData = await notasInstance.GetNote("Test");
    assert.equal(storedData.toNumber(), 2, 'Student has a different note');
  });

  it('should throw error when evaluate student without being the owner', async () => {
    await Utils.shouldThrow(notasInstance.Evaluate("Test", 2, { from: randomStudent }));
  });

  it('should emit evaluated student event', async () => {
    const result = await notasInstance.Evaluate("Test", 2, { from: teacher });
    assert.equal(result.logs[0].event, 'EvaluatedStudent', 'Student has a different note');
  });

  // should succeed to GetRevisions

  // should throw error when Get Revision without being the teacher 

  // should emit RevisionAskedBy event 
});