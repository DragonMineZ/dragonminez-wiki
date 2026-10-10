import java.lang.reflect.Method;
import java.nio.file.Path;

public class QuestDump {
	public static void main(String[] args) throws Exception {
		net.minecraftforge.fml.loading.FMLPaths.loadAbsolutePaths(Path.of(args[0]).resolve("game"));
		Path dir = Path.of(args[0]).resolve("dragonminez").resolve("sidequests");
		Class<?> cls = Class.forName("com.dragonminez.common.quest.SideQuestDefaults");
		Method m = cls.getDeclaredMethod("createDefaultSideQuestFiles", Path.class);
		m.setAccessible(true);
		m.invoke(null, dir);
		Class<?> sagas = Class.forName("com.dragonminez.common.quest.QuestDefaults");
		Method q = sagas.getDeclaredMethod("createDefaultQuestFiles", Path.class);
		q.setAccessible(true);
		q.invoke(null, Path.of(args[0]).resolve("dragonminez").resolve("quests"));
		System.out.println("done " + dir);
	}
}
