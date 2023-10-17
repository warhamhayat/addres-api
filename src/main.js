import {web} from "./application/web.js";
import {logger} from "./application/logging.js";
import { prismaClient } from "./application/database.js";


const start = async ()=>{
    try {
        await prismaClient.$connect()
        logger.info("database prisma terhubung")
        web.listen(3000, () => {
            logger.info("App start");
        });
    } catch (error) {
        logger.info(error)
    }
}
  
start();